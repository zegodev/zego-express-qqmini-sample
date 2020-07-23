<view qq:if="{{canShow== 1}}">
  <view class="containerBase">
    <live-pusher qq:if="{{livePusherUrl}}" url="{{livePusherUrl}}" aspect="3:4" bindstatechange="onPushStateChange" bindnetstatus="onPushNetStateChange" waiting-image="https://storage.zego.im/downloads/pause_publish.png"></live-pusher>
    <live-player qq:for="{{livePlayerList}}" qq:key="streamID" id="{{item.streamID}}" src="{{item.url}}" mode="RTC" autoplay bindstatechange="onPlayStateChange" bindnetstatus="onPlayNetStateChange"></live-player>
  </view>
  <scroll-view class="message-view" scroll-y="true" scroll-into-view="{{scrollToView}}">
    <view class="message-item" qq:for="{{messageList}}" qq:key="{{index}}" id="{{item.id}}">
      <view>
        <span>{{item.name}}:</span>
        <image qq:if="{{item.isImg}}" src="{{item.content}}" alt=""></image>
        <text qq:else>{{item.content}}</text>
      </view>
    </view>
  </scroll-view>
  <view class="index-container">
    <view class='input-container'>
      <input value="{{roomID}}" bindinput="bindKeyInput" placeholder="请输入房间 ID" placeholder-style='color: #b3b3b3; font-size: 14px;' class="room-input" />
    </view>
    <view class="button-container">
      <button bindtap="openRoom" data-role="1"  hover-class="none" class="util-btn">
        加入房间
      </button>
      <button bindtap="snapshot" data-type="1"  class="util-btn">推流截图</button>
      <button bindtap="snapshot" data-type="0"  class="util-btn">拉流截图</button>
      <!-- <button bindtap="logout" hover-class="none" class="util-btn">退出房间</button> -->
    </view>
  </view>
</view>
<view class="settings">
  <button qq:if="{{canShow==0}}" open-type="openSetting" bindopensetting="settingCallback">
    授权使用摄像头和麦克风
  </button>
</view>