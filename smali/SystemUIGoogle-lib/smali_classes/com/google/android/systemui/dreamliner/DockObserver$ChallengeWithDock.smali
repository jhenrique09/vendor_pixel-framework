.class public final Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final challengeData:[B

.field public final dockId:B

.field public final resultReceiver:Landroid/os/ResultReceiver;

.field public final synthetic this$0:Lcom/google/android/systemui/dreamliner/DockObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;B[BI)V
    .locals 0

    iput p5, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iput-byte p3, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;->dockId:B

    iput-object p4, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;->challengeData:[B

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;->resultReceiver:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/dreamliner/WirelessCharger;

    iget-byte v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;->dockId:B

    iget-object v2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;->challengeData:[B

    new-instance v3, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeCallback;

    iget-object v4, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;->resultReceiver:Landroid/os/ResultReceiver;

    invoke-direct {v3, v4, p0}, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeCallback;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/systemui/dreamliner/WirelessCharger;->challenge(B[BLcom/google/android/systemui/dreamliner/WirelessCharger$ChallengeCallback;)V

    :cond_0
    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/dreamliner/WirelessCharger;

    iget-byte v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;->dockId:B

    iget-object v2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;->challengeData:[B

    new-instance v3, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthChallengeResponseCallback;

    iget-object v4, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;->resultReceiver:Landroid/os/ResultReceiver;

    invoke-direct {v3, v4, p0}, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthChallengeResponseCallback;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;)V

    check-cast v0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;

    invoke-virtual {v0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->initHALInterface()Z

    iget-object p0, v0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/IWirelessCharger;

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    const/4 v4, 0x0

    :try_start_0
    check-cast p0, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;

    invoke-virtual {p0, v1, v2}, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;->getWpcAuthChallengeResponse(B[B)Lvendor/google/wireless_charger/WpcAuthChallengeResponse;

    move-result-object p0

    iget-byte v1, p0, Lvendor/google/wireless_charger/WpcAuthChallengeResponse;->maxProtocolVersion:B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    iget-byte v2, p0, Lvendor/google/wireless_charger/WpcAuthChallengeResponse;->slotPopulatedMask:B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    iget-byte v5, p0, Lvendor/google/wireless_charger/WpcAuthChallengeResponse;->certificateChainHashLsb:B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iget-object v6, p0, Lvendor/google/wireless_charger/WpcAuthChallengeResponse;->signatureR:[B

    invoke-static {v6}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->convertPrimitiveArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-object p0, p0, Lvendor/google/wireless_charger/WpcAuthChallengeResponse;->signatureS:[B

    invoke-static {p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->convertPrimitiveArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move v7, v0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    move v5, v0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_1

    :catch_4
    move-exception p0

    move v1, v0

    :goto_1
    move v2, v0

    move v5, v2

    :goto_2
    move-object v6, v4

    :goto_3
    invoke-static {p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mapError(Ljava/lang/Exception;)I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "get wpc challenge response fail: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v8, "Dreamliner-WLC_HAL"

    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v4

    :goto_4
    const-string v8, "GWACR() result: "

    const-string v9, "DLObserver"

    invoke-static {v8, v7, v9}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v8, v3, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthChallengeResponseCallback;->mResultReceiver:Landroid/os/ResultReceiver;

    if-nez v7, :cond_1

    const-string v4, "GWACR() response: mpv="

    const-string v7, ", pm="

    const-string v10, ", chl="

    invoke-static {v4, v1, v7, v2, v10}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", rv="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", sv="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v3, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthChallengeResponseCallback;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "max_protocol_ver"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string v1, "slot_populated_mask"

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string v1, "cert_lsb"

    invoke-virtual {v3, v1, v5}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string v1, "signature_r"

    invoke-static {v6}, Lcom/google/android/systemui/dreamliner/DockObserver;->convertArrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v1, "signature_s"

    invoke-static {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->convertArrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object p0

    invoke-virtual {v3, v1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v8, v0, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_5

    :cond_1
    const/4 p0, 0x1

    invoke-virtual {v8, p0, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_2
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
