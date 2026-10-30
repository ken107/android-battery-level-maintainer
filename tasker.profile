<TaskerData sr="" dvi="1" tv="6.6.20">
	<dmetric>1440.0,2621.0</dmetric>
	<Profile sr="prof24" ve="2">
		<cdate>1741153495212</cdate>
		<edate>1741170314250</edate>
		<flags>8</flags>
		<id>24</id>
		<mid0>26</mid0>
		<State sr="con0" ve="2">
			<code>140</code>
			<Int sr="arg0" val="0"/>
			<Int sr="arg1" val="45"/>
		</State>
	</Profile>
	<Profile sr="prof25" ve="2">
		<cdate>1741153522214</cdate>
		<edate>1741153616303</edate>
		<flags>10</flags>
		<id>25</id>
		<mid0>2</mid0>
		<State sr="con0" ve="2">
			<code>140</code>
			<Int sr="arg0" val="55"/>
			<Int sr="arg1" val="100"/>
		</State>
	</Profile>
	<Project sr="proj0" ve="2">
		<cdate>1741152188425</cdate>
		<mdate>1741170377277</mdate>
		<name>Base</name>
		<pids>24,25</pids>
		<tids>26,2</tids>
		<Img sr="icon" ve="2">
			<nme>mw_action_home</nme>
		</Img>
	</Project>
	<Project sr="proj1" ve="2">
		<cdate>1638206541615</cdate>
		<mdate>1741152394090</mdate>
		<name>Power Connect &amp; Disconnect</name>
		<scenes>Popup</scenes>
		<Share sr="Share">
			<b>true</b>
			<d>Alert you when the  power connected &amp; disconnected with a voice alert and when the battery reached at 80% ,a continious alert will be triggered until you disconnect the charger . And when battery level reached  below 30% a popup message will be display without any voice or ring alert.</d>
			<g>Charging,Battery,Power</g>
			<p>true</p>
			<t></t>
		</Share>
		<Img sr="icon" ve="2">
			<nme>mw_action_settings_input_hdmi</nme>
		</Img>
	</Project>
	<Scene sr="scenePopup">
		<cdate>1638249187943</cdate>
		<edate>1638249187943</edate>
		<heightLand>-1</heightLand>
		<heightPort>749</heightPort>
		<nme>Popup</nme>
		<widthLand>-1</widthLand>
		<widthPort>900</widthPort>
		<TextElement sr="elements0" ve="3">
			<flags>4</flags>
			<geom>17,0,881,216,6,0,294,72</geom>
			<Str sr="arg0" ve="3">Title</Str>
			<Str sr="arg1" ve="3">Title</Str>
			<Int sr="arg2" val="30"/>
			<Int sr="arg3" val="100"/>
			<Str sr="arg4" ve="3">#FF80CBC4</Str>
			<Str sr="arg5" ve="3"/>
			<Int sr="arg6" val="3"/>
			<Int sr="arg7"/>
			<Int sr="arg8"/>
		</TextElement>
		<RectElement sr="elements1">
			<flags>4</flags>
			<geom>0,216,900,8,-1,-1,-1,-1</geom>
			<Str sr="arg0" ve="3">Header</Str>
			<Int sr="arg1" val="0"/>
			<Str sr="arg2" ve="3">#77333333</Str>
			<Str sr="arg3" ve="3"/>
			<Int sr="arg4" val="0"/>
			<Str sr="arg5" ve="3">#FF000000</Str>
			<Int sr="arg6" val="0"/>
			<Int sr="arg7" val="0"/>
		</RectElement>
		<TextElement sr="elements2" ve="3">
			<clickTask>-936</clickTask>
			<flags>5</flags>
			<geom>20,236,857,437,-1,-1,-1,-1</geom>
			<Str sr="arg0" ve="3">Text1</Str>
			<Str sr="arg1" ve="3">Text</Str>
			<Int sr="arg2" val="24"/>
			<Int sr="arg3" val="100"/>
			<Str sr="arg4" ve="3">#FFFFFFFF</Str>
			<Str sr="arg5" ve="3"/>
			<Int sr="arg6" val="0"/>
			<Int sr="arg7" val="1"/>
			<Int sr="arg8"/>
		</TextElement>
		<PropertiesElement sr="props">
			<Int sr="arg0" val="1"/>
			<Int sr="arg1" val="0"/>
			<Str sr="arg2" ve="3">#FF000000</Str>
			<Int sr="arg3" val="0"/>
			<Str sr="arg4" ve="3">Popup</Str>
			<Str sr="arg5" ve="3"/>
			<Img sr="arg6" ve="2"/>
			<Str sr="arg7" ve="3"/>
		</PropertiesElement>
	</Scene>
	<Task sr="task2">
		<cdate>1741154071636</cdate>
		<edate>1793339225804</edate>
		<id>2</id>
		<nme>Switch Off</nme>
		<pri>100</pri>
		<Action sr="act0" ve="7">
			<code>547</code>
			<Str sr="arg0" ve="3">%payload</Str>
			<Str sr="arg1" ve="3">0PKB+Iv/mvfV75S2xaDUi/mc8JHot8Sw0aXA4tijgfKG55P21O7eo96j</Str>
			<Int sr="arg2" val="0"/>
			<Int sr="arg3" val="0"/>
			<Int sr="arg4" val="0"/>
			<Int sr="arg5" val="3"/>
			<Int sr="arg6" val="1"/>
		</Action>
		<Action sr="act1" ve="7">
			<code>664</code>
			<Str sr="arg0" ve="3">payload</Str>
			<Str sr="arg1" ve="3">Base64</Str>
			<Str sr="arg2" ve="3">decode
{byte[]} (String, int)</Str>
			<Str sr="arg3" ve="3">%payload</Str>
			<Str sr="arg4" ve="3">0</Str>
			<Str sr="arg5" ve="3"/>
			<Str sr="arg6" ve="3"/>
			<Str sr="arg7" ve="3"/>
			<Str sr="arg8" ve="3"/>
			<Str sr="arg9" ve="3"/>
		</Action>
		<Action sr="act2" ve="7">
			<code>664</code>
			<Str sr="arg0" ve="3">socket</Str>
			<Str sr="arg1" ve="3">DatagramSocket</Str>
			<Str sr="arg2" ve="3">new
{DatagramSocket} ()</Str>
			<Str sr="arg3" ve="3"/>
			<Str sr="arg4" ve="3"/>
			<Str sr="arg5" ve="3"/>
			<Str sr="arg6" ve="3"/>
			<Str sr="arg7" ve="3"/>
			<Str sr="arg8" ve="3"/>
			<Str sr="arg9" ve="3"/>
		</Action>
		<Action sr="act3" ve="7">
			<code>664</code>
			<Str sr="arg0" ve="3"/>
			<Str sr="arg1" ve="3">socket</Str>
			<Str sr="arg2" ve="3">setBroadcast
{} (boolean)</Str>
			<Str sr="arg3" ve="3">true</Str>
			<Str sr="arg4" ve="3"/>
			<Str sr="arg5" ve="3"/>
			<Str sr="arg6" ve="3"/>
			<Str sr="arg7" ve="3"/>
			<Str sr="arg8" ve="3"/>
			<Str sr="arg9" ve="3"/>
		</Action>
		<Action sr="act4" ve="7">
			<code>664</code>
			<Str sr="arg0" ve="3">broadcastAddr</Str>
			<Str sr="arg1" ve="3">InetAddress</Str>
			<Str sr="arg2" ve="3">getByName
{InetAddress} (String)</Str>
			<Str sr="arg3" ve="3">255.255.255.255</Str>
			<Str sr="arg4" ve="3"/>
			<Str sr="arg5" ve="3"/>
			<Str sr="arg6" ve="3"/>
			<Str sr="arg7" ve="3"/>
			<Str sr="arg8" ve="3"/>
			<Str sr="arg9" ve="3"/>
		</Action>
		<Action sr="act5" ve="7">
			<code>664</code>
			<Str sr="arg0" ve="3">packet</Str>
			<Str sr="arg1" ve="3">DatagramPacket</Str>
			<Str sr="arg2" ve="3">new
{DatagramPacket} (byte[], int, InetAddress, int)</Str>
			<Str sr="arg3" ve="3">payload</Str>
			<Str sr="arg4" ve="3">payload.length</Str>
			<Str sr="arg5" ve="3">broadcastAddr</Str>
			<Str sr="arg6" ve="3">9999</Str>
			<Str sr="arg7" ve="3"/>
			<Str sr="arg8" ve="3"/>
			<Str sr="arg9" ve="3"/>
		</Action>
		<Action sr="act6" ve="7">
			<code>664</code>
			<Str sr="arg0" ve="3"/>
			<Str sr="arg1" ve="3">socket</Str>
			<Str sr="arg2" ve="3">send
{} (DatagramPacket)</Str>
			<Str sr="arg3" ve="3">packet</Str>
			<Str sr="arg4" ve="3"/>
			<Str sr="arg5" ve="3"/>
			<Str sr="arg6" ve="3"/>
			<Str sr="arg7" ve="3"/>
			<Str sr="arg8" ve="3"/>
			<Str sr="arg9" ve="3"/>
		</Action>
	</Task>
	<Task sr="task26">
		<cdate>1741154071636</cdate>
		<edate>1793339217142</edate>
		<id>26</id>
		<nme>Switch On</nme>
		<pri>100</pri>
		<Action sr="act0" ve="7">
			<code>547</code>
			<Str sr="arg0" ve="3">%payload</Str>
			<Str sr="arg1" ve="3">0PKB+Iv/mvfV75S2xaDUi/mc8JHot8Sw0aXA4tijgfKG55P21O7fot+i</Str>
			<Int sr="arg2" val="0"/>
			<Int sr="arg3" val="0"/>
			<Int sr="arg4" val="0"/>
			<Int sr="arg5" val="3"/>
			<Int sr="arg6" val="1"/>
		</Action>
		<Action sr="act1" ve="7">
			<code>664</code>
			<Str sr="arg0" ve="3">payload</Str>
			<Str sr="arg1" ve="3">Base64</Str>
			<Str sr="arg2" ve="3">decode
{byte[]} (String, int)</Str>
			<Str sr="arg3" ve="3">%payload</Str>
			<Str sr="arg4" ve="3">0</Str>
			<Str sr="arg5" ve="3"/>
			<Str sr="arg6" ve="3"/>
			<Str sr="arg7" ve="3"/>
			<Str sr="arg8" ve="3"/>
			<Str sr="arg9" ve="3"/>
		</Action>
		<Action sr="act2" ve="7">
			<code>664</code>
			<Str sr="arg0" ve="3">socket</Str>
			<Str sr="arg1" ve="3">DatagramSocket</Str>
			<Str sr="arg2" ve="3">new
{DatagramSocket} ()</Str>
			<Str sr="arg3" ve="3"/>
			<Str sr="arg4" ve="3"/>
			<Str sr="arg5" ve="3"/>
			<Str sr="arg6" ve="3"/>
			<Str sr="arg7" ve="3"/>
			<Str sr="arg8" ve="3"/>
			<Str sr="arg9" ve="3"/>
		</Action>
		<Action sr="act3" ve="7">
			<code>664</code>
			<Str sr="arg0" ve="3"/>
			<Str sr="arg1" ve="3">socket</Str>
			<Str sr="arg2" ve="3">setBroadcast
{} (boolean)</Str>
			<Str sr="arg3" ve="3">true</Str>
			<Str sr="arg4" ve="3"/>
			<Str sr="arg5" ve="3"/>
			<Str sr="arg6" ve="3"/>
			<Str sr="arg7" ve="3"/>
			<Str sr="arg8" ve="3"/>
			<Str sr="arg9" ve="3"/>
		</Action>
		<Action sr="act4" ve="7">
			<code>664</code>
			<Str sr="arg0" ve="3">broadcastAddr</Str>
			<Str sr="arg1" ve="3">InetAddress</Str>
			<Str sr="arg2" ve="3">getByName
{InetAddress} (String)</Str>
			<Str sr="arg3" ve="3">255.255.255.255</Str>
			<Str sr="arg4" ve="3"/>
			<Str sr="arg5" ve="3"/>
			<Str sr="arg6" ve="3"/>
			<Str sr="arg7" ve="3"/>
			<Str sr="arg8" ve="3"/>
			<Str sr="arg9" ve="3"/>
		</Action>
		<Action sr="act5" ve="7">
			<code>664</code>
			<Str sr="arg0" ve="3">packet</Str>
			<Str sr="arg1" ve="3">DatagramPacket</Str>
			<Str sr="arg2" ve="3">new
{DatagramPacket} (byte[], int, InetAddress, int)</Str>
			<Str sr="arg3" ve="3">payload</Str>
			<Str sr="arg4" ve="3">payload.length</Str>
			<Str sr="arg5" ve="3">broadcastAddr</Str>
			<Str sr="arg6" ve="3">9999</Str>
			<Str sr="arg7" ve="3"/>
			<Str sr="arg8" ve="3"/>
			<Str sr="arg9" ve="3"/>
		</Action>
		<Action sr="act6" ve="7">
			<code>664</code>
			<Str sr="arg0" ve="3"/>
			<Str sr="arg1" ve="3">socket</Str>
			<Str sr="arg2" ve="3">send
{} (DatagramPacket)</Str>
			<Str sr="arg3" ve="3">packet</Str>
			<Str sr="arg4" ve="3"/>
			<Str sr="arg5" ve="3"/>
			<Str sr="arg6" ve="3"/>
			<Str sr="arg7" ve="3"/>
			<Str sr="arg8" ve="3"/>
			<Str sr="arg9" ve="3"/>
		</Action>
	</Task>
</TaskerData>
