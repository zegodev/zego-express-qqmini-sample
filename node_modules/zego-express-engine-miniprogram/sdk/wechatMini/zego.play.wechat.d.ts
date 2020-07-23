import { Logger } from '../common/zego.logger';
import { ZegoStreamCenterWechat } from './zego.streamcenter.wechat';
import { ZegoDataReport } from '../common/zego.datareport';
import { StateCenter } from '../common/clientBase/stateCenter';
/**
 ZegoPlayer
 */
export declare class ZegoPlayWechat {
    urls: string[];
    tryUrls: string[];
    streamId: string;
    playUrlIndex: number;
    playUrlTryCount: number;
    currentUrl: string | null;
    retryIndex: number;
    reconnectCount: number;
    state: number;
    logger: Logger;
    reconnectLimit: number;
    streamCenter: ZegoStreamCenterWechat;
    sourceType: number;
    playerType: number;
    params: any;
    playerSeq: number;
    publishQualitySeq: number;
    publishQualityCount: number;
    publishQulaityMaxCount: number;
    playQualitySeq: number;
    playQualityCount: number;
    playQulaityMaxCount: number;
    everSuccess: boolean;
    dataReport: ZegoDataReport;
    pushBegin: boolean;
    playBegin: boolean;
    playerInfo: any;
    playerLogUploadTime: number;
    stateCenter: any;
    constructor(logger: Logger, streamId: string, urls: string[], params: any, reconnectLimit: number, streamcenter: ZegoStreamCenterWechat, sourceType: number, playerType: number, dataReport: ZegoDataReport, stateCenter: StateCenter);
    resetPlayer(): void;
    newPlayer(): boolean;
    stopPlayer(): void;
    tryStartPlayer(errorCode: any): void;
    getPlayerUrl(): string;
    shouldRetryPlay(event: {
        detail: {
            code: any;
        };
    }): boolean;
    isPlayFailed(event: {
        detail: {
            code: any;
        };
    }): boolean;
    shouldRetryPublish(event: {
        detail: {
            code: any;
        };
    }): boolean;
    isPublishFailed(event: {
        detail: {
            code: any;
        };
    }): boolean;
    updateEvent(event: {
        detail: any;
    }): void;
    updatePlayerNetStatus(event: {
        detail: {
            info: {
                videoBitrate: any;
                audioBitrate: any;
                videoFPS: any;
                videoHeight: any;
                videoWidth: any;
                videoGOP: any;
                netSpeed: any;
                netJitter: any;
            };
        };
    }): void;
    getCurrentPlayerUrl(): string;
    reportQualityStatics(this: any): void;
    reportPlayQualityStatics(this: any): void;
}
