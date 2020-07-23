import { ENUM_RUN_STATE, LinkedList, MixStreamAdvance } from '../zego.entity';
export declare class StateCenter {
    debug: boolean;
    debugCustom: boolean;
    testEnvironment: boolean;
    third_token: string;
    pullLimited: boolean;
    configOK: boolean;
    appid: number;
    userid: string;
    sessionid: string;
    roomid: string;
    token: string;
    role: 1 | 2;
    server: string;
    serverBak: string;
    idName: string;
    nickName: string;
    userStateUpdate: boolean;
    maxMemberCount: number;
    roomCreateFlag: number;
    runState: ENUM_RUN_STATE;
    lastRunState: ENUM_RUN_STATE;
    callbackList: {
        [index: string]: Function;
    };
    streamQuerying: boolean;
    streamSeq: number;
    streamList: Array<any>;
    publishStreamList: any;
    userQuerying: boolean;
    userTempList: any;
    userList: Array<{
        userID: string;
        userName: string;
    }>;
    userSeq: number;
    userSeqMergeMap: any;
    userSeqMergeTimer: any;
    userQueryTimer: any;
    lastUserQueryTime: number;
    userListInterval: number;
    userListMergeInterval: number;
    anchor_info: {
        anchor_id: string;
        anchor_id_name: string;
        anchor_nick_name: string;
    };
    sendCommandMap: any;
    sendCommandList: LinkedList;
    sendDataMap: any;
    sendDataList: LinkedList;
    joinLiveCallbackMap: any;
    joinLiveRequestMap: any;
    streamUrlMap: any;
    cmdCallback: any;
    customUrl: any;
    customPlayUrl: any;
    transSeqMap: any;
    realyMessageList: any;
    relayTimer: any;
    bigImLastTimeIndex: number;
    bigIMmessageList: any;
    bigImCallbackMap: any;
    bigImTimer: any;
    msgCategory: 1 | 2;
    serverTimeOffset: number;
    datiTimeWindow: number;
    bigimTimeWindow: number;
    bigImMessageList: any;
    screenShotStream: MediaStream;
    tryLoginCount: number;
    tryLoginTimer: any;
    tryHeartbeatCount: number;
    heartbeatInterval: number;
    heartbeatTimer: any;
    sendDataCheckTimer: any;
    sendDataCheckInterval: number;
    sendDataTimeout: number;
    sendDataDropTimeout: number;
    sendDataCheckOnceCount: number;
    sendRoomMsgTime: number;
    SendRoomMsgInterval: number;
    cmdSeq: number;
    startConnceTime: any;
    startloginTime: any;
    startloginSucTime: any;
    audioEffectBuffer: any;
    audioBitRate: number;
    cdnSeq: number;
    listenerList: {
        [index: string]: Array<Function>;
    };
    reportList: {
        [index: string]: Function;
    };
    reportSeqList: {
        login: number;
        relogin: number;
        startPublish: {
            [index: string]: number;
        };
        rePublish: {
            [index: string]: number;
        };
        startPlay: {
            [index: string]: number;
        };
        rePlay: {
            [index: string]: number;
        };
        stopPublish: {
            [index: string]: number;
        };
        stopPlay: {
            [index: string]: number;
        };
    };
    clientType: string | undefined;
    streamTrigger: any;
    mixStreamAdvance: MixStreamAdvance;
    audioStreamList: {
        [index: string]: {
            mic: MediaStreamAudioSourceNode;
            script: ScriptProcessorNode;
        };
    };
    constructor();
    isLogin(): boolean;
    getRequestId(): string;
    getSignalCmdContent(requestId: string, dest_id_name: string, result?: number): string;
    actionListener(listener: string, ...args: Array<any>): void;
}
