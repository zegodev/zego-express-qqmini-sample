<view class="mainUI">

    <view class='tips'>
        <text>本小程序展示即构科技实时音视频能力</text>
    </view>

    <view class='guide-box'>
        <view qq:for="{{entryInfos}}" qq:key="*this" id="{{index}}" class='guide' bindtap='onEntryTap'>
            <image class="guide_icon" src="{{item.icon}}" mode="aspectFit"/>
            <view class="guide_label">{{item.title}}</view>
            <view class="guide_label sub_title">{{item.subtitle}}</view>
        </view>
    </view>

    <!-- <view class="settings">
        <button qq:if="{{canShow=='0'}}" open-type="openSetting" bindopensetting="settingCallback">授权使用摄像头和麦克风</button>
    </view> -->

</view>
