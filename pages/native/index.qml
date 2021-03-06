<view qq:if="{{canShow== 1}}">
  <view class="live-wrapper">
    <view class="containerBase">
      <live-pusher qq:if="{{livePusherUrl}}" url="{{livePusherUrl}}" aspect="3:4" min-bitrate="{{pushConfig.minBitrate}}" max-bitrate="{{pushConfig.maxBitrate}}" enable-camera="{{pushConfig.enableCamera}}" muted="{{pushConfig.muted}}" beauty="{{pushConfig.isBeauty}}" whiteness="{{pushConfig.isWhiteness}}" mirror="{{pushConfig.isMirror}}" orientation="{{pushConfig.orientation}}" debug="{{pushConfig.showLog}}" bindstatechange="onPushStateChange" bindnetstatus="onPushNetStateChange" binderror="onPushError" waiting-image="https://storage.zego.im/downloads/pause_publish.png"></live-pusher>
      <live-player qq:for="{{livePlayerList}}" qq:key="streamID" src="{{item.url}}" id="{{item.streamID}}" mode="RTC" autoplay bindstatechange="onPlayStateChange" bindnetstatus="onPlayNetStateChange" binderror="onPlayError">
        <cover-view class='img-box'>
          <cover-image class='img-view' src='../../resource/{{playConfig.fullScreen? "smallscreen" : "fullscreen"}}.png' id="{{'s-'+item.streamID}}" bindtap="toggleFullScreen"></cover-image>
        </cover-view>
      </live-player>
    </view>
  </view>
  <view class="index-container">
    <view class='input-container'>
      <input value="{{roomID}}" bindinput="bindKeyInput" placeholder="请输入房间 ID" placeholder-style='color: #b3b3b3; font-size: 14px;' class="room-input" />
      <text class="tip"></text>
    </view>
    <view class="button-container">
      <button bindtap="openRoom" data-role="1"  hover-class="none" class="util-btn">
        加入房间(推流)
      </button>
      <button bindtap="openRoom" data-role="0"  hover-class="none" class="util-btn">
        加入房间(不推流)
      </button>
      <button bindtap="switchCamera"  class="util-btn">
        切换相机({{pushConfig.frontCamera?'前':'后'}})
      </button>
      <!-- <button bindtap="toggleCamera"  class="util-btn">
        {{pushConfig.enableCamera?'关闭':'打开'}}摄像头
      </button> -->
      <button bindtap="enableMute"  class="util-btn">
        {{pushConfig.muted?'打开':'关闭'}}麦克风
      </button>
      <button bindtap="setMirror"  class="util-btn">
        {{pushConfig.isMirror?'关闭':'打开'}}镜像
      </button>
      <button bindtap="setBeauty"  class="util-btn">
        {{pushConfig.isBeauty?'关闭':'打开'}}美颜
      </button>
      <button bindtap="setWhiteness"  class="util-btn">
        {{pushConfig.isWhiteness?'关闭':'打开'}}美白
      </button>
      <button bindtap="toggleOrientation"  class="util-btn">画面方向</button>
      <button bindtap="showLog"  class="util-btn">
        {{pushConfig.showLog?'关闭':'打开'}}日志
      </button>
      <!-- <button bindtap="logout" class="util-btn" hover-class="none">退出房间</button> -->
    </view>
  </view>
</view>
<view class="settings">
  <button qq:if="{{canShow==0}}" open-type="openSetting" bindopensetting="settingCallback">
    授权使用摄像头和麦克风
  </button>
</view>