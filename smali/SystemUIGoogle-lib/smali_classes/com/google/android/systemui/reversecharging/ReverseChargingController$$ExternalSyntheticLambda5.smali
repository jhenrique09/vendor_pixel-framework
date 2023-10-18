.class public final synthetic Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/reversecharging/ReverseChargingController;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda5;->f$0:Lcom/google/android/systemui/reversecharging/ReverseChargingController;

    iput-object p2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda5;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda5;->f$0:Lcom/google/android/systemui/reversecharging/ReverseChargingController;

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda5;->f$1:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    const-string v2, "onReverseStateChangedOnBackgroundThread(): rtx="

    const-string v3, "key_rtx_mode"

    const-string v4, "ReverseChargingControl"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v6, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    move v8, v5

    :goto_0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " bundle="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " this="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v7, "key_reason_type"

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "key_rtx_connection"

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "key_accessory_type"

    invoke-virtual {p0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "key_rtx_level"

    invoke-virtual {p0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    iget-boolean v10, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    if-nez v10, :cond_3

    iget-boolean v10, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mWirelessCharging:Z

    if-eqz v10, :cond_3

    if-nez v3, :cond_3

    if-lez p0, :cond_3

    iput p0, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxLevel:I

    iget-object p0, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mName:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mContext:Landroid/content/Context;

    const v1, 0x7f130765

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mName:Ljava/lang/String;

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->fireReverseChanged()V

    goto/16 :goto_11

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->isReverseSupported()Z

    move-result v10

    const/4 v11, 0x0

    const/4 v12, -0x1

    if-nez v10, :cond_4

    iput-boolean v5, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    iput v12, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxLevel:I

    iput-object v11, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->fireReverseChanged()V

    goto/16 :goto_11

    :cond_4
    iget v10, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCurrentRtxMode:I

    const/4 v11, 0x3

    const/4 v13, 0x4

    if-ne v10, v6, :cond_c

    if-eq v3, v6, :cond_c

    iget-boolean v14, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    if-eqz v14, :cond_c

    const/16 v10, 0x8

    const/4 v14, 0x2

    if-eqz v7, :cond_a

    if-eq v7, v6, :cond_9

    if-eq v7, v14, :cond_8

    if-eq v7, v11, :cond_7

    if-eq v7, v13, :cond_6

    const/16 v11, 0xf

    if-eq v7, v11, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v10}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStopEvent(I)V

    goto :goto_1

    :cond_6
    const/16 v10, 0x6e

    invoke-virtual {v0, v10}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStopEvent(I)V

    goto :goto_1

    :cond_7
    const/16 v10, 0x66

    invoke-virtual {v0, v10}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStopEvent(I)V

    goto :goto_1

    :cond_8
    invoke-virtual {v0, v11}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStopEvent(I)V

    goto :goto_1

    :cond_9
    invoke-virtual {v0, v13}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStopEvent(I)V

    goto :goto_1

    :cond_a
    if-ne v3, v14, :cond_b

    iget v11, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCurrentRtxReceiverType:I

    if-eqz v11, :cond_b

    invoke-virtual {v0, v10}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStopEvent(I)V

    goto :goto_1

    :cond_b
    invoke-virtual {v0, v6}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStopEvent(I)V

    :goto_1
    const-string v10, "Reverse charging error happened : "

    invoke-static {v10, v7, v4}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :cond_c
    if-eq v10, v6, :cond_d

    if-ne v3, v6, :cond_d

    iget-boolean v7, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    if-nez v7, :cond_d

    invoke-virtual {v0, v6}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStartEvent(I)V

    :cond_d
    :goto_2
    iget v7, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCurrentRtxMode:I

    if-eq v7, v6, :cond_e

    if-ne v3, v6, :cond_e

    iget-boolean v7, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    if-nez v7, :cond_e

    iget-boolean v7, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mDoesNfcConflictWithWlc:Z

    if-eqz v7, :cond_e

    iget-boolean v7, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRestoreWlcNfcPollingMode:Z

    if-nez v7, :cond_e

    invoke-virtual {v0, v5}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->enableNfcPollingMode(Z)V

    iput-boolean v6, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRestoreWlcNfcPollingMode:Z

    :cond_e
    iput v3, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCurrentRtxMode:I

    iput-boolean v5, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    iput v12, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxLevel:I

    const/4 v7, 0x0

    iput-object v7, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mName:Ljava/lang/String;

    const/16 v7, 0x10

    const/16 v10, 0x72

    if-ne v3, v6, :cond_21

    iget-boolean v3, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mProvidingBattery:Z

    const/16 v11, 0x5a

    const-string v13, ", accType : "

    if-nez v3, :cond_14

    if-eqz v8, :cond_14

    if-eqz v1, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v14, "playSoundIfNecessary() play start charging sound: "

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", mStartReconnected : "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStartReconnected:Z

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-boolean v3, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStartReconnected:Z

    if-eqz v3, :cond_13

    if-eq v9, v7, :cond_11

    if-eq v9, v11, :cond_11

    if-ne v9, v10, :cond_10

    goto :goto_3

    :cond_10
    move v3, v5

    goto :goto_4

    :cond_11
    :goto_3
    move v3, v6

    :goto_4
    if-nez v3, :cond_12

    goto :goto_5

    :cond_12
    const/4 v3, 0x0

    goto :goto_6

    :cond_13
    :goto_5
    iget-object v3, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mContext:Landroid/content/Context;

    const v11, 0x7f130768

    invoke-virtual {v3, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_6
    iput-boolean v5, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStartReconnected:Z

    goto :goto_9

    :cond_14
    if-eqz v3, :cond_18

    if-nez v8, :cond_18

    if-eqz v1, :cond_15

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v14, "playSoundIfNecessary() play end charging sound: "

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", mStartReConnected : "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStartReconnected:Z

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    iget-boolean v3, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStartReconnected:Z

    if-nez v3, :cond_18

    if-eq v9, v7, :cond_17

    if-eq v9, v11, :cond_17

    if-ne v9, v10, :cond_16

    goto :goto_7

    :cond_16
    move v3, v5

    goto :goto_8

    :cond_17
    :goto_7
    move v3, v6

    :goto_8
    if-eqz v3, :cond_18

    iput-boolean v6, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStartReconnected:Z

    if-eqz v1, :cond_18

    const-string v3, "playSoundIfNecessary() start reconnected"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/4 v3, 0x0

    :goto_9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_19

    new-instance v11, Landroid/net/Uri$Builder;

    invoke-direct {v11}, Landroid/net/Uri$Builder;-><init>()V

    const-string v13, "file"

    invoke-virtual {v11, v13}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iget-object v11, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mContext:Landroid/content/Context;

    invoke-static {v11, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->playSound(Landroid/media/Ringtone;)V

    :cond_19
    iput-boolean v8, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mProvidingBattery:Z

    iput-boolean v6, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    if-nez v8, :cond_1b

    if-eqz v1, :cond_1a

    const-string p0, "receiver is not available"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iput v12, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxLevel:I

    iput v5, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCurrentRtxReceiverType:I

    goto/16 :goto_c

    :cond_1b
    iput-boolean v5, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStopReverseAtAcUnplug:Z

    iput p0, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxLevel:I

    iput-boolean v6, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mUseRxRemovalTimeOut:Z

    iget p0, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCurrentRtxReceiverType:I

    if-eq p0, v9, :cond_22

    if-eqz v1, :cond_1c

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "receiver type updated: "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCurrentRtxReceiverType:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    if-eqz v1, :cond_1d

    const-string p0, "logReverseAccessoryType: "

    invoke-static {p0, v9, v4}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1d
    if-eqz v9, :cond_20

    sget-boolean p0, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->DEBUG:Z

    new-instance p0, Landroid/frameworks/stats/VendorAtom;

    invoke-direct {p0}, Landroid/frameworks/stats/VendorAtom;-><init>()V

    const-string v3, ""

    iput-object v3, p0, Landroid/frameworks/stats/VendorAtom;->reverseDomainName:Ljava/lang/String;

    new-array v3, v6, [Landroid/frameworks/stats/VendorAtomValue;

    iput-object v3, p0, Landroid/frameworks/stats/VendorAtom;->values:[Landroid/frameworks/stats/VendorAtomValue;

    const v8, 0x186c8

    iput v8, p0, Landroid/frameworks/stats/VendorAtom;->atomId:I

    if-eq v9, v7, :cond_1f

    if-ne v9, v10, :cond_1e

    goto :goto_a

    :cond_1e
    move v8, v5

    goto :goto_b

    :cond_1f
    :goto_a
    move v8, v6

    :goto_b
    invoke-static {v8}, Landroid/frameworks/stats/VendorAtomValue;->intValue(I)Landroid/frameworks/stats/VendorAtomValue;

    move-result-object v8

    aput-object v8, v3, v5

    invoke-static {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->reportVendorAtom(Landroid/frameworks/stats/VendorAtom;)V

    :cond_20
    iput v9, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCurrentRtxReceiverType:I

    goto :goto_c

    :cond_21
    iput-boolean v5, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStopReverseAtAcUnplug:Z

    iput-boolean v5, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mProvidingBattery:Z

    iput-boolean v5, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mUseRxRemovalTimeOut:Z

    iput-boolean v5, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStartReconnected:Z

    iget-boolean p0, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mDoesNfcConflictWithWlc:Z

    if-eqz p0, :cond_22

    iget-boolean p0, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRestoreWlcNfcPollingMode:Z

    if-eqz p0, :cond_22

    iput-boolean v5, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRestoreWlcNfcPollingMode:Z

    iget-boolean p0, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRestoreUsbNfcPollingMode:Z

    xor-int/2addr p0, v6

    invoke-virtual {v0, p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->enableNfcPollingMode(Z)V

    :cond_22
    :goto_c
    invoke-virtual {v0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->fireReverseChanged()V

    invoke-virtual {v0, v5}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->cancelRtxTimer(I)V

    invoke-virtual {v0, v6}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->cancelRtxTimer(I)V

    const/4 p0, 0x4

    invoke-virtual {v0, p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->cancelRtxTimer(I)V

    iget-boolean v3, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStartReconnected:Z

    const/4 v8, 0x3

    if-nez v3, :cond_23

    invoke-virtual {v0, v8}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->cancelRtxTimer(I)V

    :cond_23
    iget-boolean v3, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    if-eqz v3, :cond_2e

    iget v11, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxLevel:I

    if-ne v11, v12, :cond_2e

    iget-boolean v1, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStartReconnected:Z

    if-eqz v1, :cond_26

    if-ne v9, v7, :cond_24

    sget-wide v1, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DURATION_TO_ADVANCED_ACCESSORY_DEVICE_RECONNECTED_TIME_OUT:J

    goto :goto_d

    :cond_24
    if-ne v9, v10, :cond_25

    sget-wide v1, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DURATION_TO_ADVANCED_PHONE_RECONNECTED_TIME_OUT:J

    goto :goto_d

    :cond_25
    sget-wide v1, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DURATION_TO_ADVANCED_PLUS_ACCESSORY_DEVICE_RECONNECTED_TIME_OUT:J

    goto :goto_d

    :cond_26
    iget-boolean v1, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStopReverseAtAcUnplug:Z

    if-eqz v1, :cond_27

    sget-wide v1, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DURATION_TO_REVERSE_AC_TIME_OUT:J

    goto :goto_d

    :cond_27
    iget-boolean v1, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mUseRxRemovalTimeOut:Z

    if-eqz v1, :cond_28

    sget-wide v1, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DURATION_TO_REVERSE_RX_REMOVAL_TIME_OUT:J

    goto :goto_d

    :cond_28
    sget-wide v1, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DURATION_TO_REVERSE_TIME_OUT:J

    :goto_d
    iget-boolean v3, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStopReverseAtAcUnplug:Z

    if-eqz v3, :cond_29

    const-string v3, "rtx.ac.timeout"

    goto :goto_e

    :cond_29
    const-string v3, "rtx.timeout"

    :goto_e
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2a

    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_f

    :catch_0
    move-exception v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getRtxTimeOut(): invalid timeout, "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    :goto_f
    sget-boolean v3, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    if-eqz v3, :cond_2b

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "onReverseStateChangedOnBackgroundThread(): time out, setRtxTimer, duration="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    iget-boolean v3, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStartReconnected:Z

    if-eqz v3, :cond_2c

    move v5, v8

    goto :goto_10

    :cond_2c
    iget-boolean v3, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mUseRxRemovalTimeOut:Z

    if-eqz v3, :cond_2d

    iget-boolean v3, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStopReverseAtAcUnplug:Z

    if-nez v3, :cond_2d

    move v5, p0

    :cond_2d
    :goto_10
    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->setRtxTimer(JI)V

    goto :goto_11

    :cond_2e
    if-eqz v3, :cond_30

    iget p0, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxLevel:I

    const/16 v3, 0x64

    if-lt p0, v3, :cond_30

    if-eqz v1, :cond_2f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Rx fully charged, setRtxTimer, REVERSE_FINISH_RX_FULL"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->setRtxTimer(JI)V

    :cond_30
    :goto_11
    return-void
.end method
