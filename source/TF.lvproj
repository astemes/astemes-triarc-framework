<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="20008000">
	<Property Name="CCSymbols" Type="Str">,;DEBUG,TRUE</Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Property Name="NI.Project.Description" Type="Str"></Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="DisableAutoDeployVariables" Type="Bool">true</Property>
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Framework" Type="Folder">
			<Item Name="Base.lvclass" Type="LVClass" URL="../Framework/Base/Base.lvclass"/>
			<Item Name="Process.lvclass" Type="LVClass" URL="../Framework/Process/Process.lvclass"/>
			<Item Name="Application.lvclass" Type="LVClass" URL="../Framework/Application/Application.lvclass"/>
			<Item Name="View.lvclass" Type="LVClass" URL="../Framework/View/View.lvclass"/>
			<Item Name="Callback.lvclass" Type="LVClass" URL="../Framework/Callback/Callback.lvclass"/>
			<Item Name="Configuration.lvclass" Type="LVClass" URL="../Framework/Configuration/Configuration.lvclass"/>
			<Item Name="Configuration File.lvclass" Type="LVClass" URL="../Framework/Configuration File/Configuration File.lvclass"/>
			<Item Name="Error Handler Interface.lvclass" Type="LVClass" URL="../Framework/Error Handler Interface/Error Handler Interface.lvclass"/>
			<Item Name="Helper Loop.lvclass" Type="LVClass" URL="../Framework/Helper Loop/Helper Loop.lvclass"/>
			<Item Name="Async Handler.lvclass" Type="LVClass" URL="../Framework/Async Handler/Async Handler.lvclass"/>
			<Item Name="Logging.lvclass" Type="LVClass" URL="../Framework/Logging/Logging.lvclass"/>
			<Item Name="Broadcast Event Helpers.lvlib" Type="Library" URL="../Framework/Broadcast Event Helpers/Broadcast Event Helpers.lvlib"/>
			<Item Name="Synchronous Request Callback.lvclass" Type="LVClass" URL="../Framework/Synchronous Request Callback/Synchronous Request Callback.lvclass"/>
		</Item>
		<Item Name="Framework Tests" Type="Folder">
			<Item Name="Mock Classes" Type="Folder">
				<Item Name="Mock Process.lvclass" Type="LVClass" URL="../Framework Test Suite/Mock Process/Mock Process.lvclass"/>
				<Item Name="Mock Error Handler.lvclass" Type="LVClass" URL="../Framework Test Suite/Mock Error Handler/Mock Error Handler.lvclass"/>
				<Item Name="Mock Log Handler.lvclass" Type="LVClass" URL="../Framework Test Suite/Mock Log Handler/Mock Log Handler.lvclass"/>
			</Item>
			<Item Name="Base Test.lvclass" Type="LVClass" URL="../Framework Test Suite/Base Class Test/Base Test.lvclass"/>
			<Item Name="Process Test.lvclass" Type="LVClass" URL="../Framework Test Suite/Process Test/Process Test.lvclass"/>
			<Item Name="Error Handler Interface Test.lvclass" Type="LVClass" URL="../Framework Test Suite/Error Handler Interface Test/Error Handler Interface Test.lvclass"/>
			<Item Name="View Test.lvclass" Type="LVClass" URL="../Framework Test Suite/View Test/View Test.lvclass"/>
			<Item Name="Application Test.lvclass" Type="LVClass" URL="../Framework Test Suite/Application Test/Application Test.lvclass"/>
			<Item Name="Test Support.lvlib" Type="Library" URL="../Framework Test Suite/Support/Test Support.lvlib"/>
		</Item>
		<Item Name="Development Tests" Type="Folder">
			<Item Name="Mock Classes" Type="Folder">
				<Item Name="Mock Async Handler Process.lvclass" Type="LVClass" URL="../../tests/Mock Async Handler Process/Mock Async Handler Process.lvclass"/>
				<Item Name="Mock Configurable Base.lvclass" Type="LVClass" URL="../../tests/Mock Configurable Base/Mock Configurable Base.lvclass"/>
				<Item Name="Mock Configurable Process.lvclass" Type="LVClass" URL="../../tests/Mock Configurable Process/Mock Configurable Process.lvclass"/>
			</Item>
			<Item Name="Base Dev Test.lvclass" Type="LVClass" URL="../../tests/Base Dev Test/Base Dev Test.lvclass"/>
			<Item Name="Process Dev Test.lvclass" Type="LVClass" URL="../../tests/Process Development Test/Process Test/Process Dev Test.lvclass"/>
			<Item Name="View Dev Test.lvclass" Type="LVClass" URL="../../tests/View Dev Test/View Dev Test.lvclass"/>
			<Item Name="Async Handling Test.lvclass" Type="LVClass" URL="../../tests/Async Handling Test/Async Handling Test.lvclass"/>
			<Item Name="Application Dev Test.lvclass" Type="LVClass" URL="../../tests/Application Dev Test/Application Dev Test.lvclass"/>
			<Item Name="Configuration Interface Test.lvclass" Type="LVClass" URL="../../tests/Configuration Interface Test/Configuration Interface Test.lvclass"/>
			<Item Name="Mock Process Test.lvclass" Type="LVClass" URL="../../tests/Mock Process Test/Mock Process Test.lvclass"/>
			<Item Name="Helper Loop Test.lvclass" Type="LVClass" URL="../../tests/Helper Loop Test/Helper Loop Test.lvclass"/>
			<Item Name="Logger Test.lvclass" Type="LVClass" URL="../../tests/Logger Test/Logger Test.lvclass"/>
			<Item Name="Configuration File Race Condition Test.lvclass" Type="LVClass" URL="../../tests/Configuration File Race Condition Test/Configuration File Race Condition Test.lvclass"/>
			<Item Name="Configuration File Reference Management Test.lvclass" Type="LVClass" URL="../../tests/Configuration File Reference Management Test/Configuration File Reference Management Test.lvclass"/>
			<Item Name="Configuration File Process Interface Test.lvclass" Type="LVClass" URL="../../tests/Configuration File Process Interface Test/Configuration File Process Interface Test.lvclass"/>
			<Item Name="Configuration File Base Interface Test.lvclass" Type="LVClass" URL="../../tests/Configuration File Interface Test/Configuration File Base Interface Test.lvclass"/>
			<Item Name="Process Lifecycle Test.lvclass" Type="LVClass" URL="../../tests/Lifecycle Test/Process Lifecycle Test.lvclass"/>
		</Item>
		<Item Name="IDE Integration" Type="Folder">
			<Item Name="Menu" Type="Folder">
				<Item Name="Tools Menu" Type="Folder">
					<Item Name="Add TF Test Suite to Project.vi" Type="VI" URL="../IDE Integration/Menu/Tools Menu/Add TF Test Suite to Project.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Add TF to Project.vi" Type="VI" URL="../IDE Integration/Menu/Tools Menu/Add TF to Project.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Generate TF Process.vi" Type="VI" URL="../IDE Integration/Menu/Tools Menu/Generate TF Process.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
				</Item>
			</Item>
			<Item Name="Process Generation" Type="Folder">
				<Item Name="Process Generation.lvlib" Type="Library" URL="../IDE Integration/Process Generation/Process Generation.lvlib"/>
			</Item>
			<Item Name="Method Generation" Type="Folder">
				<Item Name="Method Generation.lvlib" Type="Library" URL="../IDE Integration/Method Generation/Method Generation.lvlib"/>
			</Item>
			<Item Name="Triarc Project Provider.lvlib" Type="Library" URL="../IDE Integration/Project Provider/Triarc Project Provider.lvlib"/>
			<Item Name="lv_icon.lvlibp" Type="LVLibp" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp">
				<Item Name="Other" Type="Folder">
					<Item Name="Adjust temporary rotate and flip rectangle.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Adjust temporary rotate and flip rectangle.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Apply Opacity.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Apply Opacity.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Apply Transparency.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Apply Transparency.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="ApplyLVClassIconOverlayToVIIcon.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/ApplyLVClassIconOverlayToVIIcon.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Average Grayscale of Line.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Average Grayscale of Line.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Calculate Body Text Position.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Calculate Body Text Position.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Check Color.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Check Color.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Create Color Array.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Create Color Array.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Create default Layer.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Create default Layer.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Create default LV Icon Data.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Create default LV Icon Data.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Create Layer from Image.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Create Layer from Image.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Deserialize Picture Control Data.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Deserialize Picture Control Data.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Draw Layers.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Draw Layers.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Draw Picture based on Origin.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Draw Picture based on Origin.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Extract Data.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Extract Data.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Fill.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Fill.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="FilterEmptyLayerIcons.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/FilterEmptyLayerIcons.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Find BG Color Peak.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Find BG Color Peak.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Find Neighbours.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Find Neighbours.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Find Start and Endpoint Body Text.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Find Start and Endpoint Body Text.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Flatten Load &amp; Unload.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Flatten Load &amp; Unload.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Flood Glyph.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Flood Glyph.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Get Grayscale Value.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Get Grayscale Value.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Get Image Data.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Get Image Data.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Get LV Glyph Path.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Get LV Glyph Path.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Get SubPicture Coordinate.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Get SubPicture Coordinate.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Get SubPicture Coordinates.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Get SubPicture Coordinates.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Get_VI_Icon.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Get_VI_Icon.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Join Layers.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Join Layers.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="LabVIEW Fonts.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/LabVIEW Fonts.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Magic Transparent Color Constant.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Magic Transparent Color Constant.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Remove Duplicates from Color Array.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Remove Duplicates from Color Array.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Replace Color.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Replace Color.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Restore original Coordinates.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Restore original Coordinates.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Return MutationCode Folder.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Return MutationCode Folder.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Rotate Flip Image.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Rotate Flip Image.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Serialize Icon Data.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Serialize Icon Data.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Text.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Text.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Unflatten Load &amp; Unload.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Unflatten Load &amp; Unload.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
				</Item>
				<Item Name="Read and Write Icon Data" Type="Folder">
					<Item Name="Read Icon Data from Library.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Read Icon Data from Library.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Read Icon Data from VI.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Read Icon Data from VI.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Write Icon Data to Library.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Write Icon Data to Library.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Write Icon Data to VI.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Support/Write Icon Data to VI.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
				</Item>
				<Item Name="Add Data to History.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Undo Redo/Add Data to History.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Add new Layer.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/Add new Layer.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Alignment Value Change.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/Alignment Value Change.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Analyze XML stream.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/ni.com_iconlibrary/Analyze XML stream.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Ants.lvclass" Type="LVClass" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Class/Ants/Ants.lvclass"/>
				<Item Name="ApplyLibIconOverlayToVIIcon.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Support/ApplyLibIconOverlayToVIIcon.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="AssessRectangle.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/AssessRectangle.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Bit-array To Byte-array.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/pictutil.llb/Bit-array To Byte-array.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Buffer for lossless tracking.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Buffer for lossless tracking.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="BuildCategories.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Graphics/BuildCategories.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/error.llb/BuildHelpPath.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Calc Long Word Padded Width.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/bmp.llb/Calc Long Word Padded Width.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="CalculateAntsRect.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/CalculateAntsRect.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Call Keep ApplyLib in Memory.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Support/Call Keep ApplyLib in Memory.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Call Keep IE in Memory.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/Call Keep IE in Memory.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Change Mouse Cursor.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/Change Mouse Cursor.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="ChangeRefreshGraphicsState.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Graphics/ChangeRefreshGraphicsState.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Check Color Table Size.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/jpeg.llb/Check Color Table Size.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Check Data Size.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/jpeg.llb/Check Data Size.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Check File Permissions.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/jpeg.llb/Check File Permissions.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/libraryn.llb/Check if File or Folder Exists.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Check Path.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/jpeg.llb/Check Path.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Check Special Tags.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Check whether installed.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/ni.com_iconlibrary/Check whether installed.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Classes Initialization.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Classes Initialization.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Clear Errors.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Clear User Layers.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/Clear User Layers.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Close Registry Key.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/registry/registry.llb/Close Registry Key.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Coerce Bad Rect.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/pictutil.llb/Coerce Bad Rect.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Color to RGB.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/colorconv.llb/Color to RGB.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Compare Src And Dst Simple.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/libraryn.llb/Compare Src And Dst Simple.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Compare Two Paths.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/libraryn.llb/Compare Two Paths.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Connector Pane Initialization.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Connector Pane Initialization.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Const Temp Coordinate 2 points.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Draw/Const Temp Coordinate 2 points.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Const Temp Coordinate 4 points.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Draw/Const Temp Coordinate 4 points.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Convert property node font to graphics font.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="CoordinatesCorrection.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/CoordinatesCorrection.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="CorruptIconErrorMessage.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Graphics/CorruptIconErrorMessage.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Create Directory Recursive.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/libraryn.llb/Create Directory Recursive.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Create Mask By Alpha.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/picture.llb/Create Mask By Alpha.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Create Mask.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/pictutil.llb/Create Mask.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Create new class icon user layers.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Create new class icon user layers.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Create new layer_LayerName_Picture.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Create new layer_LayerName_Picture.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Create or Substitute NI_Layer layer.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Support/Create or Substitute NI_Layer layer.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Data.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Global Variables/Data.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="DealWithScrollbars.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/DealWithScrollbars.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="DefaultIconGlyphData.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Support/DefaultIconGlyphData.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Defer_FP_Updates.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Def FP Updates/Defer_FP_Updates.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Delete Directory Recursive.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/libraryn.llb/Delete Directory Recursive.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Delete From VI Library.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/libraryn.llb/Delete From VI Library.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Delete Selected Layers.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/Delete Selected Layers.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="DeleteLayer.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Layer/DeleteLayer.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="DeselectLayer.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Layer/DeselectLayer.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Details Display Dialog.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Dflt Data Dir.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/file.llb/Dflt Data Dir.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Directory of Top Level VI.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/jpeg.llb/Directory of Top Level VI.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Discover Who Invoked The Icon Editor.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/IconEditor/Discover Who Invoked The Icon Editor.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Draw Flattened Pixmap.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/picture.llb/Draw Flattened Pixmap.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Draw Line.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/picture.llb/Draw Line.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Draw Oval.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/picture.llb/Draw Oval.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Draw Point.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/picture.llb/Draw Point.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Draw Rect.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/picture.llb/Draw Rect.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Draw Text at Point.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/picture.llb/Draw Text at Point.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Draw Text in Rect.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/picture.llb/Draw Text in Rect.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Draw True-Color Pixmap.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/picture.llb/Draw True-Color Pixmap.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="DrawIcon.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Draw/DrawIcon.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Empty Picture" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/picture.llb/Empty Picture">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="EnableDisable Combine Layers.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Menubar/EnableDisable Combine Layers.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Enum Registry Values Simple.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/registry/registry.llb/Enum Registry Values Simple.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Enum Registry Values.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/registry/registry.llb/Enum Registry Values.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Error Cluster From Error Code.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Error Code Database.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Escape.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/Escape.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/express/express shared/ex_CorrectErrorChain.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Export_Clipboard.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Load Unload/Export_Clipboard.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Extract LV Icon Data.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Extract LV Icon Data.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="ExtractDataFromXML.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/ni.com_iconlibrary/ExtractDataFromXML.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="FakedArray.lvclass" Type="LVClass" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Class/FakedArray/FakedArray.lvclass"/>
				<Item Name="FGV_Undo Redo.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Undo Redo/FGV_Undo Redo.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Filter Graphics by File Name.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Graphics/Filter Graphics by File Name.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Finalize Movement.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Finalize Movement.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Finalize Text.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Finalize Text.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Find Tag.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Fire Body Text Change event.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/Fire Body Text Change event.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="FixBadRect.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/pictutil.llb/FixBadRect.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Flatten Icon.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Load Unload/Flatten Icon.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Flatten Layers.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Load Unload/Flatten Layers.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Flatten Pixmap.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/pixmap.llb/Flatten Pixmap.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Flip and Pad for Picture Control.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/bmp.llb/Flip and Pad for Picture Control.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Flip color refs.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Flip color refs.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Format Message String.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/error.llb/General Error Handler Core CORE.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/error.llb/General Error Handler.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Generate Temporary File Path.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/libraryn.llb/Generate Temporary File Path.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Get 32x32 Image Data.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Support/Get 32x32 Image Data.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Get Color Icon from Caller.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Load Unload/Get Color Icon from Caller.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/libraryn.llb/Get File Extension.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Get Image Subset.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/pictutil.llb/Get Image Subset.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Get Monochrome Icon from Caller.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Get Monochrome Icon from Caller.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Get String Text Bounds.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/picture.llb/Get Text Rect.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="GetComparisonResult4Graphis.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/GetComparisonResult4Graphis.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/error.llb/GetHelpDir.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="GetLibIconForVIIconOverlay.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Support/GetLibIconForVIIconOverlay.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="GetLibIconForVIIconOverlayFromVI.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Support/GetLibIconForVIIconOverlayFromVI.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="GetOffsetRWIcon.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Support/GetOffsetRWIcon.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/error.llb/GetRTHostConnectedProp.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Glyph.lvclass" Type="LVClass" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Class/Icon Library/Glyph.lvclass"/>
				<Item Name="Glyph_MouseDown.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Glyphs/Glyph_MouseDown.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Icon Editor First Call.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Support/Icon Editor First Call.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Icon Editor Help.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/Icon Editor Help.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Icon Editor Init Refs.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/Icon Editor Init Refs.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Icon Editor Properties Help.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/Icon Editor Properties Help.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Icon Framework.lvclass" Type="LVClass" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Classes/Icon Framework/Icon Framework.lvclass"/>
				<Item Name="Icon Initialization.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/Icon Initialization.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Icon.lvclass" Type="LVClass" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Classes/Icon/Icon.lvclass"/>
				<Item Name="IconEditorSettings.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/User Dialogs/IconEditorSettings.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="IconlibraryStuffInProgress.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/ni.com_iconlibrary/IconlibraryStuffInProgress.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="IE Read from Clipboard.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Clipboard/IE Read from Clipboard.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="IE Save dialog build path.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/IE Save dialog build path.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="IE Write to Clipboard.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Clipboard/IE Write to Clipboard.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="ImageDataToIconPreview.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/ImageDataToIconPreview.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Import_Clipboard.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Load Unload/Import_Clipboard.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Initialization_UserEvents.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/User Events/Initialization_UserEvents.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Install Glyphs.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/ni.com_iconlibrary/Install Glyphs.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Is Path and Not Empty.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/file.llb/Is Path and Not Empty.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="IsAntsRectValid.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/IsAntsRectValid.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="IsCoordinateConstant.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Draw/IsCoordinateConstant.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Keep IE in Memory.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/Keep IE in Memory.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="KeyDown.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Key Down Up/KeyDown.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="KeyUp.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Key Down Up/KeyUp.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="LabVIEW Icon API.lvlib" Type="Library" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/LabVIEW Icon API.lvlib"/>
				<Item Name="Launch Dynamically Load Graphics.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Graphics/Launch Dynamically Load Graphics.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Launch Icon Editor From String.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Launch Icon Editor From String.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Layer.lvclass" Type="LVClass" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Classes/Layer/Layer.lvclass"/>
				<Item Name="LayerCluster_ValueChange.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/LayerCluster_ValueChange.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Librarian Delete Dialog.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/libraryn.llb/Librarian Delete Dialog.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Librarian Delete.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/libraryn.llb/Librarian Delete.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Librarian OK to Delete.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/libraryn.llb/Librarian OK to Delete.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Librarian Path Location.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/libraryn.llb/Librarian Path Location.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Librarian Rename.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/libraryn.llb/Librarian Rename.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Librarian.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/libraryn.llb/Librarian.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Limit value.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Undo Redo/Limit value.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="List Directory and LLBs.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/libraryn.llb/List Directory and LLBs.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="ListGlyphsAndTemplates.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/ListGlyphsAndTemplates.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Load &amp; Unload.lvclass" Type="LVClass" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/LabVIEW Icon API/lv_icon/Classes/Load_Unload/Load &amp; Unload.lvclass"/>
				<Item Name="Load Glyph from File.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Load Glyph from File.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Load.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Load Unload/Load.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="LoadGraphics.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Graphics/LoadGraphics.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="LoadTemplates.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Graphics/LoadTemplates.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Longest Line Length in Pixels.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="LV Config Read Boolean.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/dialog/lvconfig.llb/LV Config Read Boolean.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="LV Config Read Color.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/dialog/lvconfig.llb/LV Config Read Color.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="LV Config Read String.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/dialog/lvconfig.llb/LV Config Read String.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="LV Config Write Boolean.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/dialog/lvconfig.llb/LV Config Write Boolean.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="LV Config Write Color.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/dialog/lvconfig.llb/LV Config Write Color.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="LV Config Write String.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/dialog/lvconfig.llb/LV Config Write String.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="lv_icon.rtm" Type="Document" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Support/lv_icon.rtm"/>
				<Item Name="lv_icon.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/lv_icon.vi"/>
				<Item Name="lv_IconEditor.lvlib" Type="Library" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/lv_IconEditor.lvlib"/>
				<Item Name="Magic Active Layer Constant.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Magic Active Layer Constant.vi"/>
				<Item Name="Manual User Input.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/ni.com_iconlibrary/Manual User Input.vi"/>
				<Item Name="MenuSelection(User).vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/MenuSelection(User).vi"/>
				<Item Name="Mouse Down.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Tools/Mouse Down.vi"/>
				<Item Name="Mouse Down_Glyphs.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/Mouse Down_Glyphs.vi"/>
				<Item Name="Mouse Down_Templates.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/Mouse Down_Templates.vi"/>
				<Item Name="Mouse Down_Tree.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/Mouse Down_Tree.vi"/>
				<Item Name="Mouse Down_User Layers.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/Mouse Down_User Layers.vi"/>
				<Item Name="MouseDown.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/MouseDown.vi"/>
				<Item Name="MouseDown_Body Text.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/MouseDown_Body Text.vi"/>
				<Item Name="MouseMove.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/MouseMove.vi"/>
				<Item Name="Move Pen.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/picture.llb/Move Pen.vi"/>
				<Item Name="Move Selected Layers.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Key Down Up/Move Selected Layers.vi"/>
				<Item Name="MoveLayers.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/MoveLayers.vi"/>
				<Item Name="ni.com_iconlibrary.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/ni.com_iconlibrary/ni.com_iconlibrary.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_Multibyte Utilities.lvlib" Type="Library" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/Multibyte/NI_Multibyte Utilities.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="NI_Unzip.lvlib" Type="Library" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/zip/NI_Unzip.lvlib"/>
				<Item Name="NI_XML.lvlib" Type="Library" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/xml/NI_XML.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="OffsetRect.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/PictureSupport.llb/OffsetRect.vi"/>
				<Item Name="Open Registry Key.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/registry/registry.llb/Open Registry Key.vi"/>
				<Item Name="Open URL in Default Browser core.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Platform/browser.llb/Open URL in Default Browser core.vi"/>
				<Item Name="Origin_or_TempCoordinate.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Draw/Origin_or_TempCoordinate.vi"/>
				<Item Name="Path To Command Line String.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/AdvancedString/Path To Command Line String.vi"/>
				<Item Name="PCT Pad String.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/picture.llb/PCT Pad String.vi"/>
				<Item Name="Picture to Pixmap.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/pictutil.llb/Picture to Pixmap.vi"/>
				<Item Name="PictureControl_MouseUp.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/PictureControl_MouseUp.vi"/>
				<Item Name="PixelValue.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Draw/PixelValue.vi"/>
				<Item Name="Populate Font ComboBox.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Populate Font ComboBox.vi"/>
				<Item Name="Populate Font Control.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Font/Populate Font Control.vi"/>
				<Item Name="Populate Graphics.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Glyphs/Populate Graphics.vi"/>
				<Item Name="Populate Tree with Categories.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Graphics/Populate Tree with Categories.vi"/>
				<Item Name="populate tree.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/populate tree.vi"/>
				<Item Name="Prepare Glyphs for Display.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Glyphs/Prepare Glyphs for Display.vi"/>
				<Item Name="PrepareData4HTML.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/PrepareData4HTML.vi"/>
				<Item Name="PrepareTemporaryView.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/PrepareTemporaryView.vi"/>
				<Item Name="Process Temporary View Layers.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Process Temporary View Layers.vi"/>
				<Item Name="Pull data from disc.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Graphics/Pull data from disc.vi"/>
				<Item Name="Query Registry Key Info.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/registry/registry.llb/Query Registry Key Info.vi"/>
				<Item Name="Read BMP File Data.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/bmp.llb/Read BMP File Data.vi"/>
				<Item Name="Read BMP File.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/bmp.llb/Read BMP File.vi"/>
				<Item Name="Read BMP Header Info.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/bmp.llb/Read BMP Header Info.vi"/>
				<Item Name="Read Data from Caller.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Load Unload/Read Data from Caller.vi"/>
				<Item Name="Read Glyphs from  File.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Load Unload/Read Glyphs from  File.vi"/>
				<Item Name="Read JPEG File.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/jpeg.llb/Read JPEG File.vi"/>
				<Item Name="Read PNG File.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/png.llb/Read PNG File.vi"/>
				<Item Name="ReadDataFromLabVIEWINI.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Load Unload/ReadDataFromLabVIEWINI.vi"/>
				<Item Name="RectSize.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/PictureSupport.llb/RectSize.vi"/>
				<Item Name="Recursive File List.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/libraryn.llb/Recursive File List.vi"/>
				<Item Name="Registry Handle Master.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/registry/registry.llb/Registry Handle Master.vi"/>
				<Item Name="Registry Simplify Data Type.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/registry/registry.llb/Registry Simplify Data Type.vi"/>
				<Item Name="Registry WinErr-LVErr.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/registry/registry.llb/Registry WinErr-LVErr.vi"/>
				<Item Name="Remove invalid characters.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Remove invalid characters.vi"/>
				<Item Name="Replay Data from History.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Undo Redo/Replay Data from History.vi"/>
				<Item Name="Reset layer template selection.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/Reset layer template selection.vi"/>
				<Item Name="Reset Layer VI.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Load Unload/Reset Layer VI.vi"/>
				<Item Name="RGB to Color.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/colorconv.llb/RGB to Color.vi"/>
				<Item Name="RotateFlip.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/RotateFlip.vi"/>
				<Item Name="Save Graphic Overwrite.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/Save Graphic Overwrite.vi"/>
				<Item Name="Save Graphic.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/Save Graphic.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Selection_PrepareIcon.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Tools/Selection_PrepareIcon.vi"/>
				<Item Name="Selection_SetNewData.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Tools/Selection_SetNewData.vi"/>
				<Item Name="Separate Selected Layers.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Layer/Separate Selected Layers.vi"/>
				<Item Name="Set active Layer programmatically.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Class/FakedArray/Misc/Set active Layer programmatically.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set Busy.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/cursorutil.llb/Set Busy.vi"/>
				<Item Name="Set Cursor (Cursor ID).vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/cursorutil.llb/Set Cursor (Cursor ID).vi"/>
				<Item Name="Set Cursor (Icon Pict).vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/cursorutil.llb/Set Cursor (Icon Pict).vi"/>
				<Item Name="Set Pen State.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/picture.llb/Set Pen State.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Set String Value.vi"/>
				<Item Name="SET_Glyph.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Glyphs/SET_Glyph.vi"/>
				<Item Name="SET_ToolGraphic.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Glyphs/SET_ToolGraphic.vi"/>
				<Item Name="SetCursor.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/SetCursor.vi"/>
				<Item Name="Settings Init.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Settings Init.vi"/>
				<Item Name="Settings Requested Path.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Settings Requested Path.vi"/>
				<Item Name="Settings Shutdown.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Settings Shutdown.vi"/>
				<Item Name="Settings.lvclass" Type="LVClass" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Class/Settings/Settings.lvclass"/>
				<Item Name="ShowLayersPalette.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Menubar/ShowLayersPalette.vi"/>
				<Item Name="ShowTerminals.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Menubar/ShowTerminals.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="Specify Path Enum.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Specify Path Enum.vi"/>
				<Item Name="Split_Layers.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Layer/Split_Layers.vi"/>
				<Item Name="STR_ASCII-Unicode.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/registry/registry.llb/STR_ASCII-Unicode.vi"/>
				<Item Name="subFile Dialog.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/express/express input/FileDialogBlock.llb/subFile Dialog.vi"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Platform/system.llb/System Exec.vi"/>
				<Item Name="Template_MouseDown.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/Template_MouseDown.vi"/>
				<Item Name="TemporaryGlyphView.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Glyphs/TemporaryGlyphView.vi"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Tools Paint.lvclass" Type="LVClass" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Class/Tools/Tools Paint.lvclass"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Trim Whitespace.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Truncate string.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Truncate string.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Unflatten Icon.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Load Unload/Unflatten Icon.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Unflatten Layers.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Load Unload/Unflatten Layers.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Unflatten Pixmap.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/pixmap.llb/Unflatten Pixmap.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Unset Busy.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/Utility/cursorutil.llb/Unset Busy.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Update glyph path string.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/Update glyph path string.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="UpdateLayerView_ScrollbarChanged.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/UpdateLayerView_ScrollbarChanged.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Value Change_Body Text.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/Value Change_Body Text.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Value Change_Tools.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Tools/Value Change_Tools.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Value Change_Top or Bottom Layer.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Icon Editor/Value Change_Top or Bottom Layer.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="ValueSignalingTool.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Tools/ValueSignalingTool.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="ViewLayer.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Layer/ViewLayer.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="VisibleTextMarker.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Tools/VisibleTextMarker.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Windows.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Font/Windows.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Wrap.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Undo Redo/Wrap.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Write BMP Data To Buffer.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/bmp.llb/Write BMP Data To Buffer.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Write BMP Data.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/bmp.llb/Write BMP Data.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Write BMP File.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/bmp.llb/Write BMP File.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Write Data to Caller.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Load Unload/Write Data to Caller.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Write Glyphs to  File.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Load Unload/Write Glyphs to  File.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Write INI Tokens and VI Tags.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Load Unload/Write INI Tokens and VI Tags.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Write JPEG File.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/jpeg.llb/Write JPEG File.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Write PNG File.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/vi.lib/picture/png.llb/Write PNG File.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="WriteDataToLabVIEWINI.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Load Unload/WriteDataToLabVIEWINI.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="WriteText.vi" Type="VI" URL="/&lt;resource&gt;/plugins/lv_icon.lvlibp/1abvi3w/resource/plugins/NIIconEditor/Miscellaneous/Tools/WriteText.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
			</Item>
			<Item Name="Astemes-Triarc-Framework-errors.txt" Type="Document" URL="../Astemes-Triarc-Framework-errors.txt"/>
		</Item>
		<Item Name="Excluded Dependencies" Type="Folder">
			<Item Name="Item_Interface.ctl" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/Item_Interface.ctl">
				<Property Name="marked" Type="Int">0</Property>
			</Item>
			<Item Name="mxLvProvider.mxx" Type="Document" URL="/&lt;resource&gt;/Framework/Providers/mxLvProvider.mxx"/>
			<Item Name="mxLvDebugDisplayCaller.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvDebugDisplayCaller.vi">
				<Property Name="marked" Type="Int">0</Property>
			</Item>
			<Item Name="mxLvErrorHandler.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvErrorHandler.vi">
				<Property Name="marked" Type="Int">0</Property>
			</Item>
			<Item Name="mxLvGetNIIM.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvGetNIIM.vi">
				<Property Name="marked" Type="Int">0</Property>
			</Item>
			<Item Name="mxLvNIIM.ctl" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvNIIM.ctl">
				<Property Name="marked" Type="Int">0</Property>
			</Item>
			<Item Name="mxLvMenuItem.ctl" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvMenuItem.ctl">
				<Property Name="marked" Type="Int">0</Property>
			</Item>
			<Item Name="mxLvSetPopupMenu.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvSetPopupMenu.vi">
				<Property Name="marked" Type="Int">0</Property>
			</Item>
			<Item Name="ItemRef.ctl" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/ItemRef.ctl">
				<Property Name="marked" Type="Int">0</Property>
			</Item>
			<Item Name="mxLvGetItemRef.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvGetItemRef.vi">
				<Property Name="marked" Type="Int">0</Property>
			</Item>
			<Item Name="mxLvGetProjectRef.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvGetProjectRef.vi">
				<Property Name="marked" Type="Int">0</Property>
			</Item>
		</Item>
		<Item Name="Support" Type="Folder">
			<Item Name="Broadcast Event Dequeuers.lvlib" Type="Library" URL="../Framework/Broadcast Event Dequeuers/Broadcast Event Dequeuers.lvlib"/>
		</Item>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Get LV Class Name.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Name.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Create Directory Recursive.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Create Directory Recursive.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Is Path and Not Empty.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Is Path and Not Empty.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Dflt Data Dir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Dflt Data Dir.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="System Directory Type.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/System Directory Type.ctl">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Get System Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/Get System Directory.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="FileVersionInfo.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FileVersionInfo.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="FileVersionInformation.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FileVersionInformation.ctl">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="GetFileVersionInfoSize.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/GetFileVersionInfoSize.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="BuildErrorSource.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/BuildErrorSource.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="GetFileVersionInfo.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/GetFileVersionInfo.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="VerQueryValue.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/VerQueryValue.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="MoveMemory.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/MoveMemory.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="FixedFileInfo_Struct.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FixedFileInfo_Struct.ctl">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Test Case.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LUnit/Test Case.lvclass"/>
				<Item Name="NI_Data Type.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/Data Type/NI_Data Type.lvlib"/>
				<Item Name="Get LV Class Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Path.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="1D String Array to Delimited String.vi" Type="VI" URL="/&lt;vilib&gt;/AdvancedString/1D String Array to Delimited String.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="TRef TravTarget.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/traverseref.llb/TRef TravTarget.ctl">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="TRef Traverse.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/traverseref.llb/TRef Traverse.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="VI Scripting - Traverse.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/traverseref.llb/VI Scripting - Traverse.lvlib"/>
				<Item Name="Delimited String to 1D String Array.vi" Type="VI" URL="/&lt;vilib&gt;/AdvancedString/Delimited String to 1D String Array.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Get LV Class Default Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Default Value.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="LayerType.ctl" Type="VI" URL="/&lt;vilib&gt;/LabVIEW Icon API/lv_icon/Controls/LayerType.ctl">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Layer.ctl" Type="VI" URL="/&lt;vilib&gt;/LabVIEW Icon API/lv_icon/Controls/Layer.ctl">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="LVPoint32TypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPoint32TypeDef.ctl">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Layer.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/LabVIEW Icon API/lv_icon/Classes/Layer/Layer.lvclass"/>
				<Item Name="Alignment.ctl" Type="VI" URL="/&lt;vilib&gt;/LabVIEW Icon API/lv_icon/Controls/Alignment.ctl">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Font.ctl" Type="VI" URL="/&lt;vilib&gt;/LabVIEW Icon API/lv_icon/Controls/Font.ctl">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="BodyText.ctl" Type="VI" URL="/&lt;vilib&gt;/LabVIEW Icon API/lv_icon/Controls/BodyText.ctl">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Icon Framework.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/LabVIEW Icon API/lv_icon/Classes/Icon Framework/Icon Framework.lvclass"/>
				<Item Name="Icon.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/LabVIEW Icon API/lv_icon/classes/Icon/Icon.lvclass"/>
				<Item Name="FixBadRect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/FixBadRect.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="imagedata.ctl" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/imagedata.ctl">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Draw Flattened Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Flattened Pixmap.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Bit-array To Byte-array.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/Bit-array To Byte-array.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Unflatten Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pixmap.llb/Unflatten Pixmap.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Create Mask.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/Create Mask.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Picture to Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/Picture to Pixmap.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="lv_icon.lvlib" Type="Library" URL="/&lt;vilib&gt;/LabVIEW Icon API/lv_icon/lv_icon.lvlib"/>
				<Item Name="PCT Pad String.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/PCT Pad String.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Draw Text in Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Text in Rect.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Draw Text at Point.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Text at Point.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Empty Picture" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Empty Picture">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Color to RGB.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/Color to RGB.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Flatten Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pixmap.llb/Flatten Pixmap.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Draw True-Color Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw True-Color Pixmap.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Draw 1-Bit Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw 1-Bit Pixmap.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Draw 8-Bit Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw 8-Bit Pixmap.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Draw 4-Bit Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw 4-Bit Pixmap.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Draw Unflattened Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Unflattened Pixmap.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="RGB to Color.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/RGB to Color.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Graphic.ctl" Type="VI" URL="/&lt;vilib&gt;/LabVIEW Icon API/lv_icon/Controls/Graphic.ctl">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="IEColor.ctl" Type="VI" URL="/&lt;vilib&gt;/LabVIEW Icon API/lv_icon/Controls/IEColor.ctl">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="BodyTextPosition.ctl" Type="VI" URL="/&lt;vilib&gt;/LabVIEW Icon API/lv_icon/Controls/BodyTextPosition.ctl">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Set Pen State.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Set Pen State.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Draw Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Rect.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="LabVIEW Icon API.lvlib" Type="Library" URL="/&lt;vilib&gt;/LabVIEW Icon API/LabVIEW Icon API.lvlib"/>
				<Item Name="Coerce Bad Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/Coerce Bad Rect.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Get Image Subset.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/Get Image Subset.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="LabVIEW Icon Stored Information.ctl" Type="VI" URL="/&lt;vilib&gt;/LabVIEW Icon API/lv_icon/Controls/LabVIEW Icon Stored Information.ctl">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Load &amp; Unload.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/LabVIEW Icon API/lv_icon/Classes/Load_Unload/Load &amp; Unload.lvclass"/>
				<Item Name="Compare Two Paths.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Compare Two Paths.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Pathes.ctl" Type="VI" URL="/&lt;vilib&gt;/LabVIEW Icon API/lv_icon/Controls/Pathes.ctl">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="LVPointTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPointTypeDef.ctl">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Create File and Containing Folders.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Create File and Containing Folders.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Generate Temporary File Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Generate Temporary File Path.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="High Resolution Relative Seconds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/High Resolution Relative Seconds.vi"/>
				<Item Name="Validate Semaphore Size.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Validate Semaphore Size.vi"/>
				<Item Name="GetNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/GetNamedSemaphorePrefix.vi"/>
				<Item Name="AddNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/AddNamedSemaphorePrefix.vi"/>
				<Item Name="Semaphore Refnum Core.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Semaphore Refnum Core.ctl"/>
				<Item Name="Semaphore RefNum" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Semaphore RefNum"/>
				<Item Name="Obtain Semaphore Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Obtain Semaphore Reference.vi"/>
				<Item Name="Acquire Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Acquire Semaphore.vi"/>
				<Item Name="Release Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Release Semaphore.vi"/>
				<Item Name="Not A Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Not A Semaphore.vi"/>
				<Item Name="Release Semaphore Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Release Semaphore Reference.vi"/>
				<Item Name="RemoveNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/RemoveNamedSemaphorePrefix.vi"/>
				<Item Name="LUnit Runnable.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LUnit/LUnit Runnable.lvclass"/>
				<Item Name="Test Suite.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LUnit/Test Suite.lvclass"/>
				<Item Name="LUnit Inheriting Test Case.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LUnit Test Inheritance/LUnit Inheriting Test Case.lvclass"/>
			</Item>
			<Item Name="version.dll" Type="Document" URL="version.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="kernel32.dll" Type="Document" URL="kernel32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Advapi32.dll" Type="Document" URL="Advapi32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="DOMUserDefRef.dll" Type="Document" URL="DOMUserDefRef.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Enqueue Request Message.vi" Type="VI" URL="../Framework/Process/Private/SubVIs/Enqueue Request Message.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="TF" Type="Source Distribution">
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{9A495B99-0034-461C-9341-7BDC6E00467E}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">TF</Property>
				<Property Name="Bld_excludedDirectory[0]" Type="Path">vi.lib</Property>
				<Property Name="Bld_excludedDirectory[0].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectory[1]" Type="Path">resource/objmgr</Property>
				<Property Name="Bld_excludedDirectory[1].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectory[2]" Type="Path">/C/ProgramData/National Instruments/InstCache/20.0</Property>
				<Property Name="Bld_excludedDirectory[3]" Type="Path">/C/Users/anton/Documents/LabVIEW Data/2020(32-bit)/ExtraVILib</Property>
				<Property Name="Bld_excludedDirectory[4]" Type="Path">instr.lib</Property>
				<Property Name="Bld_excludedDirectory[4].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectory[5]" Type="Path">user.lib</Property>
				<Property Name="Bld_excludedDirectory[5].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectoryCount" Type="Int">6</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/Source Distributions/Triarc Framework</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{22EC8FE0-E665-4BF0-BE48-FE1EC72537F7}</Property>
				<Property Name="Bld_removeVIObj" Type="Int">1</Property>
				<Property Name="Bld_version.build" Type="Int">62</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Destination Directory</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/Source Distributions/Triarc Framework</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/Source Distributions/Triarc Framework/NI_AB_PROJECTNAME</Property>
				<Property Name="Destination[10].destName" Type="Str">Error Codes</Property>
				<Property Name="Destination[10].path" Type="Path">../builds/Source Distributions/Triarc Framework/Triarc IDE Integration/user.lib/errors</Property>
				<Property Name="Destination[2].destName" Type="Str">Triarc Framework Test Suite</Property>
				<Property Name="Destination[2].libraryName" Type="Str">TFTS.lvlib</Property>
				<Property Name="Destination[2].path" Type="Path">../builds/Source Distributions/Triarc Framework/Triarc Framework Test Suite</Property>
				<Property Name="Destination[2].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[3].destName" Type="Str">Triarc Framework</Property>
				<Property Name="Destination[3].libraryName" Type="Str">TF.lvlib</Property>
				<Property Name="Destination[3].path" Type="Path">../builds/Source Distributions/Triarc Framework/NI_AB_PROJECTNAME</Property>
				<Property Name="Destination[3].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[4].destName" Type="Str">TF Tools Menu</Property>
				<Property Name="Destination[4].path" Type="Path">../builds/Source Distributions/Triarc Framework/NI_AB_PROJECTNAME/Tools Menu/Triarc</Property>
				<Property Name="Destination[5].destName" Type="Str">TFTS Tools Menu</Property>
				<Property Name="Destination[5].path" Type="Path">../builds/Source Distributions/Triarc Framework/Triarc Framework Test Suite/Tools Menu/Triarc</Property>
				<Property Name="Destination[6].destName" Type="Str">Triarc Support</Property>
				<Property Name="Destination[6].path" Type="Path">../builds/Source Distributions/Triarc Framework/NI_AB_PROJECTNAME/Support</Property>
				<Property Name="Destination[6].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[7].destName" Type="Str">Triarc IDE Integration</Property>
				<Property Name="Destination[7].path" Type="Path">../builds/Source Distributions/Triarc Framework/Triarc IDE Integration</Property>
				<Property Name="Destination[7].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[8].destName" Type="Str">Trirac IDE Integration Tools Menu</Property>
				<Property Name="Destination[8].path" Type="Path">../builds/Source Distributions/Triarc Framework/Triarc IDE Integration/Tools Menu/Triarc</Property>
				<Property Name="Destination[8].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[9].destName" Type="Str">Project Provider</Property>
				<Property Name="Destination[9].path" Type="Path">../builds/Source Distributions/Triarc Framework/Triarc IDE Integration/Project Provider/resource/Framework/Providers</Property>
				<Property Name="Destination[9].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="DestinationCount" Type="Int">11</Property>
				<Property Name="Source[0].itemID" Type="Str">{D689AEDC-CA5F-4B66-B3A5-A861652BAAD5}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[1].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[1].Container.applyProperties" Type="Bool">true</Property>
				<Property Name="Source[1].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">3</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Framework</Property>
				<Property Name="Source[1].properties[0].type" Type="Str">Auto error handling</Property>
				<Property Name="Source[1].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[1].propertiesCount" Type="Int">1</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[1].type" Type="Str">Container</Property>
				<Property Name="Source[10].destinationIndex" Type="Int">7</Property>
				<Property Name="Source[10].itemID" Type="Ref">/My Computer/IDE Integration/Method Generation/Method Generation.lvlib</Property>
				<Property Name="Source[10].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[10].type" Type="Str">Library</Property>
				<Property Name="Source[11].destinationIndex" Type="Int">7</Property>
				<Property Name="Source[11].itemID" Type="Ref">/My Computer/IDE Integration/Method Generation/Method Generation.lvlib/Support.lvlib/Getter_Template.vit</Property>
				<Property Name="Source[11].type" Type="Str">VI</Property>
				<Property Name="Source[12].destinationIndex" Type="Int">7</Property>
				<Property Name="Source[12].itemID" Type="Ref">/My Computer/IDE Integration/Process Generation/Process Generation.lvlib/New Class Dialog.lvclass</Property>
				<Property Name="Source[12].type" Type="Str">Library</Property>
				<Property Name="Source[13].destinationIndex" Type="Int">7</Property>
				<Property Name="Source[13].itemID" Type="Ref">/My Computer/IDE Integration/Process Generation/Process Generation.lvlib/Process Generator.lvclass</Property>
				<Property Name="Source[13].type" Type="Str">Library</Property>
				<Property Name="Source[14].destinationIndex" Type="Int">7</Property>
				<Property Name="Source[14].itemID" Type="Ref">/My Computer/IDE Integration/Process Generation/Process Generation.lvlib/Tag Tree Helper.lvclass</Property>
				<Property Name="Source[14].type" Type="Str">Library</Property>
				<Property Name="Source[15].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[15].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[15].destinationIndex" Type="Int">7</Property>
				<Property Name="Source[15].itemID" Type="Ref">/My Computer/IDE Integration/Process Generation/Process Generation.lvlib/New Class Dialog.lvclass/Private</Property>
				<Property Name="Source[15].type" Type="Str">Container</Property>
				<Property Name="Source[16].destinationIndex" Type="Int">7</Property>
				<Property Name="Source[16].itemID" Type="Ref">/My Computer/IDE Integration/Process Generation/Process Generation.lvlib/New Class Dialog.lvclass/Main Dialog.vi</Property>
				<Property Name="Source[16].type" Type="Str">VI</Property>
				<Property Name="Source[17].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[17].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[17].destinationIndex" Type="Int">7</Property>
				<Property Name="Source[17].itemID" Type="Ref">/My Computer/IDE Integration/Process Generation/Process Generation.lvlib/Process Generator.lvclass/Private</Property>
				<Property Name="Source[17].type" Type="Str">Container</Property>
				<Property Name="Source[18].destinationIndex" Type="Int">7</Property>
				<Property Name="Source[18].itemID" Type="Ref">/My Computer/IDE Integration/Process Generation/Process Generation.lvlib/Process Generator.lvclass/Generate Process.vi</Property>
				<Property Name="Source[18].type" Type="Str">VI</Property>
				<Property Name="Source[19].destinationIndex" Type="Int">7</Property>
				<Property Name="Source[19].itemID" Type="Ref"></Property>
				<Property Name="Source[19].type" Type="Str">VI</Property>
				<Property Name="Source[2].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[2].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[2].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Framework Tests</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">Container</Property>
				<Property Name="Source[20].destinationIndex" Type="Int">7</Property>
				<Property Name="Source[20].itemID" Type="Ref">/My Computer/IDE Integration/Process Generation/Process Generation.lvlib/Process Generator.lvclass/Write Directory.vi</Property>
				<Property Name="Source[20].type" Type="Str">VI</Property>
				<Property Name="Source[21].destinationIndex" Type="Int">7</Property>
				<Property Name="Source[21].itemID" Type="Ref">/My Computer/IDE Integration/Process Generation/Process Generation.lvlib/Process Generator.lvclass/Write Name.vi</Property>
				<Property Name="Source[21].type" Type="Str">VI</Property>
				<Property Name="Source[22].destinationIndex" Type="Int">7</Property>
				<Property Name="Source[22].itemID" Type="Ref">/My Computer/IDE Integration/Process Generation/Process Generation.lvlib/Process Generator.lvclass/Write Parent Class.vi</Property>
				<Property Name="Source[22].type" Type="Str">VI</Property>
				<Property Name="Source[23].destinationIndex" Type="Int">7</Property>
				<Property Name="Source[23].itemID" Type="Ref"></Property>
				<Property Name="Source[23].type" Type="Str">VI</Property>
				<Property Name="Source[24].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[24].itemID" Type="Ref">/My Computer/IDE Integration/lv_icon.lvlibp</Property>
				<Property Name="Source[24].preventRename" Type="Bool">true</Property>
				<Property Name="Source[25].destinationIndex" Type="Int">9</Property>
				<Property Name="Source[25].itemID" Type="Ref">/My Computer/IDE Integration/Triarc Project Provider.lvlib</Property>
				<Property Name="Source[25].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[25].type" Type="Str">Library</Property>
				<Property Name="Source[26].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[26].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[26].destinationIndex" Type="Int">9</Property>
				<Property Name="Source[26].itemID" Type="Ref">/My Computer/IDE Integration/Triarc Project Provider.lvlib/GProviders</Property>
				<Property Name="Source[26].type" Type="Str">Container</Property>
				<Property Name="Source[27].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[27].Container.applyPrefix" Type="Bool">true</Property>
				<Property Name="Source[27].Container.applyProperties" Type="Bool">true</Property>
				<Property Name="Source[27].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[27].destinationIndex" Type="Int">9</Property>
				<Property Name="Source[27].itemID" Type="Ref">/My Computer/IDE Integration/Triarc Project Provider.lvlib/Triarc</Property>
				<Property Name="Source[27].newName" Type="Str">Triarc_</Property>
				<Property Name="Source[27].properties[0].type" Type="Str">Allow debugging</Property>
				<Property Name="Source[27].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[27].properties[1].type" Type="Str">Auto error handling</Property>
				<Property Name="Source[27].properties[1].value" Type="Bool">false</Property>
				<Property Name="Source[27].propertiesCount" Type="Int">2</Property>
				<Property Name="Source[27].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[27].type" Type="Str">Container</Property>
				<Property Name="Source[28].destinationIndex" Type="Int">7</Property>
				<Property Name="Source[28].itemID" Type="Ref">/My Computer/IDE Integration/Method Generation/Method Generation.lvlib/Support.lvlib/API_VI_Template.vit</Property>
				<Property Name="Source[28].type" Type="Str">VI</Property>
				<Property Name="Source[29].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[29].itemID" Type="Ref">/My Computer/Framework Tests/Base Test.lvclass</Property>
				<Property Name="Source[29].type" Type="Str">Library</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">5</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/IDE Integration/Menu/Tools Menu/Add TF Test Suite to Project.vi</Property>
				<Property Name="Source[3].newName" Type="Str">Add Test Suite to Project.vi</Property>
				<Property Name="Source[3].type" Type="Str">VI</Property>
				<Property Name="Source[30].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[30].itemID" Type="Ref">/My Computer/Framework Tests/Process Test.lvclass</Property>
				<Property Name="Source[30].type" Type="Str">Library</Property>
				<Property Name="Source[31].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[31].itemID" Type="Ref">/My Computer/Framework Tests/View Test.lvclass</Property>
				<Property Name="Source[31].type" Type="Str">Library</Property>
				<Property Name="Source[32].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[32].itemID" Type="Ref">/My Computer/Framework Tests/Application Test.lvclass</Property>
				<Property Name="Source[32].type" Type="Str">Library</Property>
				<Property Name="Source[33].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[33].itemID" Type="Ref">/My Computer/Development Tests/Helper Loop Test.lvclass</Property>
				<Property Name="Source[33].type" Type="Str">Library</Property>
				<Property Name="Source[34].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[34].itemID" Type="Ref">/My Computer/Framework Tests/Error Handler Interface Test.lvclass</Property>
				<Property Name="Source[34].type" Type="Str">Library</Property>
				<Property Name="Source[35].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[35].itemID" Type="Ref">/My Computer/Framework Tests/Test Support.lvlib</Property>
				<Property Name="Source[35].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[35].type" Type="Str">Library</Property>
				<Property Name="Source[36].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[36].itemID" Type="Ref">/My Computer/Development Tests/Logger Test.lvclass</Property>
				<Property Name="Source[36].type" Type="Str">Library</Property>
				<Property Name="Source[37].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[37].itemID" Type="Ref">/My Computer/Framework Tests/Mock Classes/Mock Process.lvclass</Property>
				<Property Name="Source[37].type" Type="Str">Library</Property>
				<Property Name="Source[38].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[38].itemID" Type="Ref">/My Computer/Framework Tests/Mock Classes/Mock Error Handler.lvclass</Property>
				<Property Name="Source[38].type" Type="Str">Library</Property>
				<Property Name="Source[39].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[39].itemID" Type="Ref">/My Computer/Framework Tests/Mock Classes/Mock Log Handler.lvclass</Property>
				<Property Name="Source[39].type" Type="Str">Library</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">4</Property>
				<Property Name="Source[4].itemID" Type="Ref">/My Computer/IDE Integration/Menu/Tools Menu/Add TF to Project.vi</Property>
				<Property Name="Source[4].newName" Type="Str">Add Framework Library to Project.vi</Property>
				<Property Name="Source[4].type" Type="Str">VI</Property>
				<Property Name="Source[40].Container.applyProperties" Type="Bool">true</Property>
				<Property Name="Source[40].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[40].itemID" Type="Ref">/My Computer/IDE Integration/Menu</Property>
				<Property Name="Source[40].properties[0].type" Type="Str">Allow debugging</Property>
				<Property Name="Source[40].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[40].properties[1].type" Type="Str">Auto error handling</Property>
				<Property Name="Source[40].properties[1].value" Type="Bool">false</Property>
				<Property Name="Source[40].propertiesCount" Type="Int">2</Property>
				<Property Name="Source[40].type" Type="Str">Container</Property>
				<Property Name="Source[41].Container.applyProperties" Type="Bool">true</Property>
				<Property Name="Source[41].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[41].itemID" Type="Ref">/My Computer/IDE Integration/Menu/Tools Menu</Property>
				<Property Name="Source[41].type" Type="Str">Container</Property>
				<Property Name="Source[42].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[42].itemID" Type="Ref">/My Computer/Development Tests/Mock Process Test.lvclass</Property>
				<Property Name="Source[42].type" Type="Str">Library</Property>
				<Property Name="Source[43].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[43].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[43].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[43].itemID" Type="Ref">/My Computer/Development Tests</Property>
				<Property Name="Source[43].sourceInclusion" Type="Str">Exclude</Property>
				<Property Name="Source[43].type" Type="Str">Container</Property>
				<Property Name="Source[44].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[44].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[44].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[44].destinationIndex" Type="Int">6</Property>
				<Property Name="Source[44].itemID" Type="Ref">/My Computer/Support</Property>
				<Property Name="Source[44].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[44].type" Type="Str">Container</Property>
				<Property Name="Source[5].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[5].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[5].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[5].itemID" Type="Ref">/My Computer/IDE Integration</Property>
				<Property Name="Source[5].properties[0].type" Type="Str">Allow debugging</Property>
				<Property Name="Source[5].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[5].properties[1].type" Type="Str">Auto error handling</Property>
				<Property Name="Source[5].properties[1].value" Type="Bool">false</Property>
				<Property Name="Source[5].propertiesCount" Type="Int">2</Property>
				<Property Name="Source[5].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[5].type" Type="Str">Container</Property>
				<Property Name="Source[6].destinationIndex" Type="Int">8</Property>
				<Property Name="Source[6].itemID" Type="Ref">/My Computer/IDE Integration/Menu/Tools Menu/Generate TF Process.vi</Property>
				<Property Name="Source[6].newName" Type="Str">New Triarc Process.vi</Property>
				<Property Name="Source[6].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[6].type" Type="Str">VI</Property>
				<Property Name="Source[7].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[7].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[7].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[7].itemID" Type="Ref">/My Computer/Excluded Dependencies</Property>
				<Property Name="Source[7].sourceInclusion" Type="Str">Exclude</Property>
				<Property Name="Source[7].type" Type="Str">Container</Property>
				<Property Name="Source[8].destinationIndex" Type="Int">7</Property>
				<Property Name="Source[8].itemID" Type="Ref">/My Computer/IDE Integration/Process Generation/Process Generation.lvlib/Support.lvlib/Handle Messages_Template.vit</Property>
				<Property Name="Source[8].type" Type="Str">VI</Property>
				<Property Name="Source[9].destinationIndex" Type="Int">7</Property>
				<Property Name="Source[9].itemID" Type="Ref">/My Computer/IDE Integration/Process Generation/Process Generation.lvlib</Property>
				<Property Name="Source[9].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[9].type" Type="Str">Library</Property>
				<Property Name="SourceCount" Type="Int">45</Property>
			</Item>
		</Item>
	</Item>
</Project>
