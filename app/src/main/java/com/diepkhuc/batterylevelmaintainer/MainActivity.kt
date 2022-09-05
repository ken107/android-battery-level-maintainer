package com.diepkhuc.batterylevelmaintainer

import android.app.AlarmManager
import android.app.PendingIntent
import android.content.Intent
import android.os.Bundle
import android.text.method.ScrollingMovementMethod
import android.widget.Button
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import java.io.FileNotFoundException

class MainActivity : AppCompatActivity() {

    private val alarmMgr by lazy {
        getSystemService(ALARM_SERVICE) as AlarmManager
    }
    private val txtLog by lazy {
        findViewById<TextView>(R.id.txtLog)
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        txtLog.movementMethod = ScrollingMovementMethod()

        findViewById<Button>(R.id.btnRefresh).setOnClickListener {
            txtLog.text = ""
            try {
                openFileInput("log").bufferedReader().useLines { lines ->
                    lines.forEach { txtLog.append(it + "\n") }
                }
            } catch(ex: FileNotFoundException) { }
        }

        findViewById<Button>(R.id.btnClear).setOnClickListener {
            txtLog.text = ""
            deleteFile("log")
        }

        alarmMgr.setRepeating(
            AlarmManager.RTC_WAKEUP,
            System.currentTimeMillis(),
            15*60*1000,
            PendingIntent.getBroadcast(
                this,
                1,
                Intent(this, MyReceiver::class.java)
                    .setAction("checkBattery"),
                PendingIntent.FLAG_IMMUTABLE or PendingIntent.FLAG_UPDATE_CURRENT))
    }
}