.class public final synthetic Lcom/google/android/systemui/reversecharging/ReverseChargingViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;

    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->mAmbientIndicationContainer:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->mReverse:Z

    const-string v1, "updateMessage(): rtx="

    const-string v2, "ReverseChargingViewCtrl"

    const/4 v3, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mWirelessCharging:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->mName:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->mLevel:I

    int-to-double v5, v5

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    div-double/2addr v5, v7

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f130766

    invoke-virtual {v0, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v4, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->DEBUG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->mReverse:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " wlcString="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->mKeyguardIndicationController:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    invoke-virtual {v1, v0}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->setReverseChargingMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->mAmbientIndicationContainer:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;

    iget-object v2, v1, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mWirelessChargingMessage:Ljava/lang/CharSequence;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mReverseChargingMessage:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    iput-object v0, v1, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mWirelessChargingMessage:Ljava/lang/CharSequence;

    iput-object v3, v1, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mReverseChargingMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->updatePill()V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->mKeyguardIndicationController:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    iget-boolean v4, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->mProvidingBattery:Z

    const-string v5, ""

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->mReverseCharging:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v4, v5

    :goto_0
    invoke-virtual {v0, v4}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->setReverseChargingMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->mAmbientIndicationContainer:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;

    iget-boolean v4, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->mProvidingBattery:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->mReverseCharging:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v4, v5

    :goto_1
    iget-object v6, v0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mReverseChargingMessage:Ljava/lang/CharSequence;

    invoke-static {v6, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mWirelessChargingMessage:Ljava/lang/CharSequence;

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    iput-object v3, v0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mWirelessChargingMessage:Ljava/lang/CharSequence;

    iput-object v4, v0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mReverseChargingMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->updatePill()V

    :goto_2
    sget-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->DEBUG:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->mReverse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rtxString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->mProvidingBattery:Z

    if-eqz v1, :cond_6

    iget-object v5, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->mReverseCharging:Ljava/lang/String;

    :cond_6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->mSlotReverseCharging:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->mContentDescription:Ljava/lang/String;

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    const v3, 0x7f0808d6

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->mSlotReverseCharging:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->mProvidingBattery:Z

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method
