.class public final Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mFanId:B

.field public final mResultReceiver:Landroid/os/ResultReceiver;

.field public final synthetic this$0:Lcom/google/android/systemui/dreamliner/DockObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/dreamliner/DockObserver;BLandroid/os/ResultReceiver;I)V
    .locals 0

    iput p4, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iput-byte p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;->mFanId:B

    iput-object p3, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;B)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;->mResultReceiver:Landroid/os/ResultReceiver;

    iput-byte p3, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;->mFanId:B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/dreamliner/WirelessCharger;

    iget-byte v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;->mFanId:B

    new-instance v2, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanSimpleInformationCallback;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-direct {v2, v1, p0}, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanSimpleInformationCallback;-><init>(BLandroid/os/ResultReceiver;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/systemui/dreamliner/WirelessCharger;->getFanSimpleInformation(BLcom/google/android/systemui/dreamliner/WirelessCharger$GetFanSimpleInformationCallback;)V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/dreamliner/WirelessCharger;

    iget-byte v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;->mFanId:B

    new-instance v2, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformationCallback;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-direct {v2, v1, p0}, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformationCallback;-><init>(BLandroid/os/ResultReceiver;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/systemui/dreamliner/WirelessCharger;->getFanInformation(BLcom/google/android/systemui/dreamliner/WirelessCharger$GetFanInformationCallback;)V

    :cond_1
    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/dreamliner/WirelessCharger;

    iget-byte v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;->mFanId:B

    new-instance v2, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthDigestsCallback;

    iget-object v3, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-direct {v2, v3, p0}, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthDigestsCallback;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;)V

    check-cast v0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;

    invoke-virtual {v0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->initHALInterface()Z

    iget-object p0, v0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/IWirelessCharger;

    if-eqz p0, :cond_4

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    check-cast p0, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;

    invoke-virtual {p0, v1}, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;->getWpcAuthDigests(B)Lvendor/google/wireless_charger/WpcAuthDigests;

    move-result-object p0

    iget-byte v1, p0, Lvendor/google/wireless_charger/WpcAuthDigests;->slotPopulatedMask:B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-byte v4, p0, Lvendor/google/wireless_charger/WpcAuthDigests;->slotReturnedMask:B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance v5, Ljava/util/ArrayList;

    iget-object p0, p0, Lvendor/google/wireless_charger/WpcAuthDigests;->digests:[[B

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v5, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object p0, v5

    move v5, v0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    move v4, v0

    goto :goto_1

    :catch_2
    move-exception p0

    move v1, v0

    move v4, v1

    :goto_1
    invoke-static {p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mapError(Ljava/lang/Exception;)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "get wpc digests fail: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v6, "Dreamliner-WLC_HAL"

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v3

    :goto_2
    const-string v6, "GWAD() result: "

    const-string v7, "DLObserver"

    invoke-static {v6, v5, v7}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v6, v2, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthDigestsCallback;->mResultReceiver:Landroid/os/ResultReceiver;

    if-nez v5, :cond_3

    const-string v3, "GWAD() response: pm="

    const-string v5, ", rm="

    const-string v8, ", d="

    invoke-static {v3, v1, v5, v4, v8}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v2, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthDigestsCallback;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "slot_populated_mask"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string v1, "slot_returned_mask"

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    new-instance v3, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    const-string p0, "wpc_digests"

    invoke-virtual {v2, p0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v0, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_3

    :cond_3
    const/4 p0, 0x1

    invoke-virtual {v6, p0, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_4
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
