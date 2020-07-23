<view qq:if="{{canShow== 1}}">
  <view class="live-wrapper">
    <view class="containerBase">
      <live-pusher qq:if="{{livePusherUrl}}" url="{{livePusherUrl}}" aspect="3:4" bindstatechange="onPushStateChange" bindnetstatus="onPushNetStateChange" waiting-image="https://storage.zego.im/downloads/pause_publish.png"></live-pusher>
      <live-player qq:for="{{livePlayerList}}" qq:key="streamID" id="{{item.streamID}}" src="{{item.url}}" mode="RTC" autoplay bindstatechange="onPlayStateChange" bindnetstatus="onPlayNetStateChange"></live-player>    </view>
    <view class="containerBase">
      <live-player qq:for="{{mixPlayerUrls}}" qq:key="streamID" id="{{item.streamID}}" src="{{item.url}}" mode="RTC" autoplay bindstatechange="onPlayStateChange" bindnetstatus="onPlayNetStateChange"></live-player>
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
      <button bindtap="mixStream"  class="util-btn">
        {{mixStreamStart?'停止混流':'开始混流'}}
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