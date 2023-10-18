.class public final Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$WirelessChargerInfoCallback;
.super Lvendor/google/wireless_charger/IWirelessChargerInfoCallback$Stub;
.source ""


# instance fields
.field public final mListener:Lcom/google/android/systemui/dreamliner/WirelessCharger$AlignInfoListener;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dreamliner/WirelessCharger$AlignInfoListener;)V
    .locals 0

    invoke-direct {p0}, Lvendor/google/wireless_charger/IWirelessChargerInfoCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$WirelessChargerInfoCallback;->mListener:Lcom/google/android/systemui/dreamliner/WirelessCharger$AlignInfoListener;

    return-void
.end method


# virtual methods
.method public final alignInfoChanged(Lvendor/google/wireless_charger/AlignInfo;)V
    .locals 9

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$WirelessChargerInfoCallback;->mListener:Lcom/google/android/systemui/dreamliner/WirelessCharger$AlignInfoListener;

    iget-byte v0, p1, Lvendor/google/wireless_charger/AlignInfo;->alignState:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->intValue()I

    move-result v0

    iget-byte p1, p1, Lvendor/google/wireless_charger/AlignInfo;->alignPct:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result p1

    check-cast p0, Lcom/google/android/systemui/dreamliner/DockAlignmentController$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockAlignmentController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/dreamliner/DockAlignmentController;

    iget v1, p0, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->mAlignmentState:I

    sget-boolean v2, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->DEBUG:Z

    const-string v3, "DockAlignmentController"

    if-eqz v2, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onAlignInfo, state: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", alignPct: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v4, 0x0

    if-eqz v0, :cond_4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v6, :cond_5

    const/4 v7, -0x1

    if-eq v0, v5, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_6

    const-string p1, "Unexpected state: "

    invoke-static {p1, v0, v3}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    if-gez p1, :cond_2

    move v6, v7

    goto :goto_0

    :cond_2
    const/16 v0, 0x64

    if-ge p1, v0, :cond_3

    goto :goto_0

    :cond_3
    move v6, v4

    :goto_0
    move v7, v6

    goto :goto_1

    :cond_4
    move v5, v1

    :cond_5
    move v7, v5

    :cond_6
    :goto_1
    iput v7, p0, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->mAlignmentState:I

    if-eq v1, v7, :cond_9

    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->mDockAlignmentStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda2;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "onAlignStateChanged alignState = "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "DLObserver"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v7, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mLastAlignState:I

    iget-object v1, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mAlignmentStateListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda4;

    iget-object v5, v5, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v6, v5, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

    new-instance v8, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda5;

    invoke-direct {v8, v5, v7}, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)V

    invoke-virtual {v6, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->runPhotoAction()V

    invoke-virtual {v0, v7}, Lcom/google/android/systemui/dreamliner/DockObserver;->notifyDreamlinerAlignStateChanged(I)V

    new-instance v1, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda3;

    invoke-direct {v1, v4, v0}, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/dreamliner/DockObserver;->refreshFanLevel(Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda3;)V

    goto :goto_2

    :cond_8
    if-eqz v2, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onAlignStateChanged, state: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->mAlignmentState:I

    invoke-static {p1, p0, v3}, Lcom/android/settingslib/volume/MediaSessions$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_9
    return-void
.end method
