<!--pages/setting/index.qqml-->

<view class="settings">

    <view class="items">
        <label>appID:</label>
        <input bindinput="inputChange" disabled value="{{_appID}}" data-name="appID"/>
    </view>

    <!-- <view class="items">
        <label>tokenURL:</label>
        <input bindinput="inputChange" disabled value="{{_tokenURL}}" data-name="tokenURL"/>
    </view> -->

    <view class="items">
        <label>serverURL:</label>
        <input bindinput="inputChange" disabled value="{{_serverURL}}" data-name="serverURL"/>
    </view>

</view>


<view class="handler">
    <view class="buttonGroup-top">
        <button class="leftTop" bindtap="scanQR">扫描</button>
        <button class="rightTop">xx</button>
    </view>
    <view class="buttonGroup-bottom">
        <button class="leftBottom" bindtap="submit">确定</button>
        <button class="rightBottom" bindtap="reset"> 重置</button>
    </view>
</view>