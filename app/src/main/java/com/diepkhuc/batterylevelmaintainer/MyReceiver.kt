package com.diepkhuc.batterylevelmaintainer

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.os.BatteryManager
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.launch
import java.text.SimpleDateFormat
import java.util.*

class MyReceiver : BroadcastReceiver() {

    private val scope by lazy { CoroutineScope(SupervisorJob()) }
    private val kasa by lazy { KasaClient() }
    private val dateFmt by lazy { SimpleDateFormat("MM-dd HH:mm:ss", Locale.US) }

    override fun onReceive(context: Context, intent: Intent) {
        val pendingResult = goAsync()
        scope.launch(Dispatchers.IO) {
            try {
                if (intent.action == "checkBattery") checkBattery(context)
            }
            finally {
                pendingResult.finish()
            }
        }
    }

    private fun checkBattery(context: Context) {
        getBatteryPercent(context)
            ?.let { percent ->
                context.openFileOutput("log", Context.MODE_PRIVATE or Context.MODE_APPEND).bufferedWriter().use {
                    val now = dateFmt.format(Date())
                    it.appendLine("[$now] $percent")
                }
                if (percent < 45) kasa.setPowerState(true)
                else if (percent > 55) kasa.setPowerState(false)
            }
    }

    private fun getBatteryPercent(context: Context): Float? {
        return context.registerReceiver(null, IntentFilter(Intent.ACTION_BATTERY_CHANGED))
            ?.let { intent ->
                val level = intent.getIntExtra(BatteryManager.EXTRA_LEVEL, -1)
                val scale = intent.getIntExtra(BatteryManager.EXTRA_SCALE, -1)
                level * 100 / scale.toFloat()
            }
    }
}