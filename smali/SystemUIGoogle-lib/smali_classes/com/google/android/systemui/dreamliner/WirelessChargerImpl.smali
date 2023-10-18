.class public Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;
.super Lcom/google/android/systemui/dreamliner/WirelessCharger;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final MAX_POLLING_TIMEOUT_NS:J


# instance fields
.field public mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$IsDockPresentCallback;

.field public final mHandler:Landroid/os/Handler;

.field public mPollingStartedTimeNs:J

.field public final mRunnable:Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$1;

.field public mWirelessCharger:Lvendor/google/wireless_charger/IWirelessCharger;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->MAX_POLLING_TIMEOUT_NS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/WirelessCharger;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$1;-><init>(Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;)V

    iput-object v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mRunnable:Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$IsDockPresentCallback;

    return-void
.end method

.method public static convertFanDetailedInfo(BLvendor/google/wireless_charger/FanInfo;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fan_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    iget-byte p0, p1, Lvendor/google/wireless_charger/FanInfo;->fanMode:B

    const-string v1, "fan_mode"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string p0, "fan_current_rpm"

    iget-char v1, p1, Lvendor/google/wireless_charger/FanInfo;->currentRpm:C

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "fan_min_rpm"

    iget-char v1, p1, Lvendor/google/wireless_charger/FanInfo;->minimumRpm:C

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "fan_max_rpm"

    iget-char v1, p1, Lvendor/google/wireless_charger/FanInfo;->maximumRpm:C

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "fan_type"

    iget-byte v1, p1, Lvendor/google/wireless_charger/FanInfo;->type:B

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string p0, "fan_count"

    iget-byte p1, p1, Lvendor/google/wireless_charger/FanInfo;->count:B

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    return-object v0
.end method

.method public static convertPrimitiveArrayToArrayList([B)Ljava/util/ArrayList;
    .locals 4

    if-eqz p0, :cond_2

    array-length v0, p0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static mapError(Ljava/lang/Exception;)I
    .locals 3

    instance-of v0, p0, Landroid/os/ServiceSpecificException;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    check-cast p0, Landroid/os/ServiceSpecificException;

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-gez p0, :cond_0

    const-string v0, "Got a ServiceSpecificExepction but failed to map erroCode: "

    const-string v2, "Dreamliner-WLC_HAL"

    invoke-static {v0, p0, v2}, Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    :cond_0
    move v1, p0

    :cond_1
    return v1
.end method


# virtual methods
.method public asyncIsDockPresent(Lcom/google/android/systemui/dreamliner/WirelessCharger$IsDockPresentCallback;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->initHALInterface()Z

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/IWirelessCharger;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mPollingStartedTimeNs:J

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$IsDockPresentCallback;

    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mRunnable:Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$1;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mRunnable:Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$1;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final binderDied()V
    .locals 2

    const-string v0, "Dreamliner-WLC_HAL"

    const-string v1, "serviceDied"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/IWirelessCharger;

    return-void
.end method

.method public challenge(B[BLcom/google/android/systemui/dreamliner/WirelessCharger$ChallengeCallback;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->initHALInterface()Z

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/IWirelessCharger;

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    check-cast p0, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;

    invoke-virtual {p0, p1, p2}, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;->challenge(B[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->convertPrimitiveArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mapError(Ljava/lang/Exception;)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "challenge fail: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Dreamliner-WLC_HAL"

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v1

    :goto_0
    check-cast p3, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeCallback;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "C() Result: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "DLObserver"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p3, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeCallback;->mResultReceiver:Landroid/os/ResultReceiver;

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "C() response: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p3, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeCallback;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->convertArrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object p0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string p1, "challenge_response"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_1
    :goto_1
    invoke-virtual {p2, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_2

    :cond_2
    const/4 p0, 0x1

    invoke-virtual {p2, p0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public getFanInformation(BLcom/google/android/systemui/dreamliner/WirelessCharger$GetFanInformationCallback;)V
    .locals 11

    const-string v0, ", c="

    const-string v1, ", t="

    const-string v2, ", mxr="

    const-string v3, ", mir="

    const-string v4, ", cr="

    const-string v5, ", m="

    const-string v6, "command=0, i="

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->initHALInterface()Z

    const-string v7, "Dreamliner-WLC_HAL"

    const-string v8, "command=0"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/IWirelessCharger;

    if-eqz p0, :cond_1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_0
    check-cast p0, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;

    invoke-virtual {p0, p1}, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;->getFanInfo(B)Lvendor/google/wireless_charger/FanInfo;

    move-result-object p0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v6, p0, Lvendor/google/wireless_charger/FanInfo;->fanMode:B

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v6, p0, Lvendor/google/wireless_charger/FanInfo;->currentRpm:C

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v6, p0, Lvendor/google/wireless_charger/FanInfo;->minimumRpm:C

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v6, p0, Lvendor/google/wireless_charger/FanInfo;->maximumRpm:C

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v6, p0, Lvendor/google/wireless_charger/FanInfo;->type:B

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v6, p0, Lvendor/google/wireless_charger/FanInfo;->count:B

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->convertFanDetailedInfo(BLvendor/google/wireless_charger/FanInfo;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v8

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mapError(Ljava/lang/Exception;)I

    move-result p1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "command=0 fail: "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v9

    :goto_0
    check-cast p2, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformationCallback;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Callback of command=0, result="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v7, p2, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformationCallback;->mFanId:B

    const-string v10, "DLObserver"

    invoke-static {v6, v7, v10}, Lcom/android/settingslib/volume/MediaSessions$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p2, p2, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformationCallback;->mResultReceiver:Landroid/os/ResultReceiver;

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v6, "Callback of command=0, i="

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "fan_id"

    const/4 v7, -0x1

    invoke-virtual {p0, v6, v7}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "fan_mode"

    invoke-virtual {p0, v5, v7}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "fan_current_rpm"

    invoke-virtual {p0, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "fan_min_rpm"

    invoke-virtual {p0, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "fan_max_rpm"

    invoke-virtual {p0, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fan_type"

    invoke-virtual {p0, v1, v7}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "fan_count"

    invoke-virtual {p0, v0, v7}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v10, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v8, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_1

    :cond_0
    const/4 p0, 0x1

    invoke-virtual {p2, p0, v9}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public getFanSimpleInformation(BLcom/google/android/systemui/dreamliner/WirelessCharger$GetFanSimpleInformationCallback;)V
    .locals 8

    const-string v0, "fan_current_rpm"

    const-string v1, "fan_mode"

    const-string v2, "fan_id"

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->initHALInterface()Z

    const-string v3, "Dreamliner-WLC_HAL"

    const-string v4, "command=3"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/IWirelessCharger;

    if-eqz p0, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    check-cast p0, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;

    invoke-virtual {p0, p1}, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;->getFanInfo(B)Lvendor/google/wireless_charger/FanInfo;

    move-result-object p0

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6, v2, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    iget-byte p1, p0, Lvendor/google/wireless_charger/FanInfo;->fanMode:B

    invoke-virtual {v6, v1, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    iget-char p0, p0, Lvendor/google/wireless_charger/FanInfo;->currentRpm:C

    invoke-virtual {v6, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v5

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mapError(Ljava/lang/Exception;)I

    move-result p1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "command=3 fail: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v4

    :goto_0
    check-cast p2, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanSimpleInformationCallback;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "Callback of command=3, result="

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", i="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p2, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanSimpleInformationCallback;->mFanId:B

    const-string v7, "DLObserver"

    invoke-static {p0, v3, v7}, Lcom/android/settingslib/volume/MediaSessions$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p2, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanSimpleInformationCallback;->mResultReceiver:Landroid/os/ResultReceiver;

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Callback of command=3, i="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p2, -0x1

    invoke-virtual {v6, v2, p2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", m="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, p2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cr="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5, v6}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public getInformation(Lcom/google/android/systemui/dreamliner/WirelessCharger$GetInformationCallback;)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->initHALInterface()Z

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/IWirelessCharger;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    check-cast p0, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;

    invoke-virtual {p0}, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;->getInformation()Lvendor/google/wireless_charger/DockInfo;

    move-result-object p0

    new-instance v2, Lcom/google/android/systemui/dreamliner/DockInfo;

    iget-object v3, p0, Lvendor/google/wireless_charger/DockInfo;->manufacturer:Ljava/lang/String;

    iget-object v4, p0, Lvendor/google/wireless_charger/DockInfo;->model:Ljava/lang/String;

    iget-object v5, p0, Lvendor/google/wireless_charger/DockInfo;->serial:Ljava/lang/String;

    iget-byte p0, p0, Lvendor/google/wireless_charger/DockInfo;->type:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Byte;->intValue()I

    move-result p0

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/google/android/systemui/dreamliner/DockInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v2

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mapError(Ljava/lang/Exception;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getInformation fail: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "Dreamliner-WLC_HAL"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v1

    :goto_0
    check-cast p1, Lcom/google/android/systemui/dreamliner/DockObserver$GetInformationCallback;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GI() Result: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DLObserver"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/google/android/systemui/dreamliner/DockObserver$GetInformationCallback;->mResultReceiver:Landroid/os/ResultReceiver;

    if-nez v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GI() response: di="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/DockInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "manufacturer"

    iget-object v3, p0, Lcom/google/android/systemui/dreamliner/DockInfo;->manufacturer:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "model"

    iget-object v3, p0, Lcom/google/android/systemui/dreamliner/DockInfo;->model:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "serialNumber"

    iget-object v3, p0, Lcom/google/android/systemui/dreamliner/DockInfo;->serialNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "accessoryType"

    iget p0, p0, Lcom/google/android/systemui/dreamliner/DockInfo;->accessoryType:I

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_1

    :cond_0
    const/4 p0, 0x1

    if-eq v2, p0, :cond_1

    invoke-virtual {p1, p0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public final initHALInterface()Z
    .locals 5

    const-string v0, "Dreamliner-WLC_HAL"

    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/IWirelessCharger;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    :try_start_0
    const-string v1, "vendor.google.wireless_charger.IWirelessCharger/default"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    sget v3, Lvendor/google/wireless_charger/IWirelessCharger$Stub;->$r8$clinit:I

    sget-object v3, Lvendor/google/wireless_charger/IWirelessCharger;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_0

    instance-of v4, v3, Lvendor/google/wireless_charger/IWirelessCharger;

    if-eqz v4, :cond_0

    check-cast v3, Lvendor/google/wireless_charger/IWirelessCharger;

    goto :goto_0

    :cond_0
    new-instance v3, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;

    invoke-direct {v3, v1}, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_0
    iput-object v3, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/IWirelessCharger;

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    const-string v1, "mWirelessCharger service connected!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "no wireless charger hal found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/IWirelessCharger;

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/IWirelessCharger;

    if-eqz p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public keyExchange([BLcom/google/android/systemui/dreamliner/WirelessCharger$KeyExchangeCallback;)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->initHALInterface()Z

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/IWirelessCharger;

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    check-cast p0, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;

    invoke-virtual {p0, p1}, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;->keyExchange([B)Lvendor/google/wireless_charger/KeyExchangeResponse;

    move-result-object p0

    iget-object p1, p0, Lvendor/google/wireless_charger/KeyExchangeResponse;->dockPublicKey:[B

    invoke-static {p1}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->convertPrimitiveArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-byte p0, p0, Lvendor/google/wireless_charger/KeyExchangeResponse;->dockIdentifier:B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    move-object p1, v1

    :goto_0
    invoke-static {p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mapError(Ljava/lang/Exception;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "keyExchange fail: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "Dreamliner-WLC_HAL"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_1
    check-cast p2, Lcom/google/android/systemui/dreamliner/DockObserver$KeyExchangeCallback;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "KE() Result: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DLObserver"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p2, Lcom/google/android/systemui/dreamliner/DockObserver$KeyExchangeCallback;->mResultReceiver:Landroid/os/ResultReceiver;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "KE() response: pk="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p2, Lcom/google/android/systemui/dreamliner/DockObserver$KeyExchangeCallback;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->convertArrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object p1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "dock_id"

    invoke-virtual {v1, p2, p0}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string p0, "dock_public_key"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_1
    :goto_2
    invoke-virtual {v3, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_3

    :cond_2
    const/4 p0, 0x1

    invoke-virtual {v3, p0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_3
    :goto_3
    return-void
.end method

.method public registerAlignInfo(Lcom/google/android/systemui/dreamliner/WirelessCharger$AlignInfoListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->initHALInterface()Z

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/IWirelessCharger;

    if-eqz p0, :cond_0

    :try_start_0
    new-instance v0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$WirelessChargerInfoCallback;

    invoke-direct {v0, p1}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$WirelessChargerInfoCallback;-><init>(Lcom/google/android/systemui/dreamliner/WirelessCharger$AlignInfoListener;)V

    check-cast p0, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;

    invoke-virtual {p0, v0}, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;->registerCallback(Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$WirelessChargerInfoCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "register alignInfo callback fail: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Dreamliner-WLC_HAL"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setFan(BBILcom/google/android/systemui/dreamliner/WirelessCharger$SetFanCallback;)V
    .locals 9

    const-string v0, "fan_current_rpm"

    const-string v1, "fan_mode"

    const-string v2, "fan_id"

    const-string v3, "command=1 spending time: "

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->initHALInterface()Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "command=1, i="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", m="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", r="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Dreamliner-WLC_HAL"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/IWirelessCharger;

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/IWirelessCharger;

    int-to-char p3, p3

    check-cast p0, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;

    invoke-virtual {p0, p1, p2, p3}, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;->setFan(BBC)Lvendor/google/wireless_charger/FanInfo;

    move-result-object p0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    iget-byte p1, p0, Lvendor/google/wireless_charger/FanInfo;->fanMode:B

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    iget-char p0, p0, Lvendor/google/wireless_charger/FanInfo;->currentRpm:C

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v7

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p0, 0x0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v4, p2

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    invoke-static {p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mapError(Ljava/lang/Exception;)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "command=1 fail: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p0, p1

    move-object p2, v4

    :goto_1
    check-cast p4, Lcom/google/android/systemui/dreamliner/DockObserver$SetFanCallback;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "DLObserver"

    if-nez p2, :cond_0

    const-string p2, "null fanInfo for SetFanCallback. result="

    invoke-static {p2, p0, p1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "Callback of command=1, i="

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p3, -0x1

    invoke-virtual {p2, v2, p3}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object p4

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, p3}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object p4

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", cr="

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-void
.end method
