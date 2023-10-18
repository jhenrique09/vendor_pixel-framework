.class public final synthetic Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;->$r8$classId:I

    const-string v1, "DLObserver"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/dock/DockManager$DockEventListener;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onDockEvent mDockState = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockState:I

    invoke-static {v2, v3, v1}, Lcom/android/settingslib/volume/MediaSessions$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockState:I

    invoke-interface {p0, v0}, Lcom/android/systemui/dock/DockManager$DockEventListener;->onEvent(I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    iget-object p0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mUserChangedCallback:Lcom/google/android/systemui/dreamliner/DockObserver$1;

    iget-object v2, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    iget-object v4, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-virtual {v2, p0, v4}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    iget-object p0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerGear:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    const-string p0, "initDockGestureController fail. dreamlinerGear is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/android/systemui/dreamliner/DockGestureController;

    iget-object v4, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mProtectedBroadcastSender:Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender;

    iget-object v5, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerGear:Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mPhotoPreview:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/view/View;

    iget-object v8, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mIndicationController:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    iget-object v9, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v10, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/systemui/dreamliner/DockGestureController;-><init>(Landroid/content/Context;Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/view/View;Lcom/google/android/systemui/dreamliner/DockIndicationController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V

    iput-object p0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/os/ResultReceiver;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mIndicationController:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mShowPromoTimes:I

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mShowPromo:Z

    iget-boolean v3, v0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDozing:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDocking:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->showPromoInner()V

    invoke-virtual {p0, v1, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :goto_1
    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    iget-object v2, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->isEmpty()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_2

    const-string v2, "hint is UNKNOWN for null wireless charger HAL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mFanLevel:I

    goto :goto_3

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/dreamliner/WirelessCharger;

    check-cast v2, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;

    invoke-virtual {v2}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->initHALInterface()Z

    const-string v3, "Dreamliner-WLC_HAL"

    const-string v7, "command=2"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v2, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/IWirelessCharger;

    if-eqz v2, :cond_3

    :try_start_0
    check-cast v2, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;

    invoke-virtual {v2}, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;->getFanLevel()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "command=2 fail: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    iput v4, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mFanLevel:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "command=2, l="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mFanLevel:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", spending time="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void

    :goto_4
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Send protected broadcast failed. intent= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
