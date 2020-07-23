<view qq:if="{{canShow== 1}}">
  <view class="containerBase">
    <live-pusher qq:if="{{livePusherUrl}}" url="{{livePusherUrl}}" aspect="3:4" bindstatechange="onPushStateChange" bindnetstatus="onPushNetStateChange" waiting-image="https://storage.zego.im/downloads/pause_publish.png"></live-pusher>
    <live-player qq:for="{{livePlayerList}}" qq:key="streamID" id="{{item.streamID}}" src="{{item.url}}" mode="RTC" autoplay bindstatechange="onPlayStateChange" bindnetstatus="onPlayNetStateChange"></live-player>
  </view>
  <scroll-view class="message-view" scroll-y="true" scroll-into-view="{{scrollToView}}">
    <view class="message-item" qq:for="{{messageList}}" qq:key="{{index}}" id="{{item.ID}}">
      <view>
        <span>{{item.name}}:</span>
        {{item.content}}
      </view>
    </view>
  </scroll-view>
  <view class="index-container">
    <view class='input-container'>
      <input value="{{roomID}}" bindinput="bindKeyInput" placeholder="请输入房间 ID" placeholder-style='color: #b3b3b3; font-size: 14px;' class="room-input" />
      <input value="{{message}}" bindinput="bindMessageInput" confirm-type='send' bindconfirm="sendMsg" placeholder="说点什么吧～" placeholder-style='color: #b3b3b3; font-size: 14px;' class="msg-input" />
    </view>
    <view class="button-container">
      <button bindtap="openRoom" data-role="1"  hover-class="none" class="openRoom">
        加入房间(推流)
      </button>
      <button bindtap="openRoom" data-role="0"  hover-class="none" class="openRoom">
        加入房间(不推流)
      </button>
      <button bindtap="sendMsg" hover-class="none" class="openRoom">广播发送</button>
      <button bindtap="sendBarrageMsg" hover-class="none" class="openRoom">弹幕发送</button>
      <button bindtap="sendCustomCommand" hover-class="none" class="openRoom">指定发送</button>
      <button bindtap="updateStreamExtra" hover-class="none" class="openRoom">更新信息</button>
      <!-- <button bindtap="logout" hover-class="none" class="openRoom">退出房间</button> -->
    </view>
  </view>
</view>
<view class="settings">
  <button qq:if="{{canShow==0}}" open-type="openSetting" bindopensetting="settingCallback">
    授权使用摄像头和麦克风
  </button>
</view>