.class public final Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source ""


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

.field public final synthetic this$0$com$android$systemui$statusbar$KeyguardIndicationController$BaseKeyguardCallback:Lcom/android/systemui/statusbar/KeyguardIndicationController;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;->this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;->this$0$com$android$systemui$statusbar$KeyguardIndicationController$BaseKeyguardCallback:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;I)V
    .locals 5

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;->this$0$com$android$systemui$statusbar$KeyguardIndicationController$BaseKeyguardCallback:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFaceAcquiredMessageDeferral:Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;

    iget-object p1, p0, Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;->messagesToDefer:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;->totalFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;->totalFrames:I

    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;->acquiredInfoToFrequency:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;->mostFrequentAcquiredInfoToDefer:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-le v1, p1, :cond_2

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;->mostFrequentAcquiredInfoToDefer:Ljava/lang/Integer;

    :cond_2
    iget p1, p0, Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;->totalFrames:I

    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;->mostFrequentAcquiredInfoToDefer:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;->logBuffer:Lcom/android/keyguard/logging/FaceMessageDeferralLogger;

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/keyguard/logging/FaceMessageDeferralLogger;->logFrameProcessed(Ljava/lang/String;II)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;->this$0$com$android$systemui$statusbar$KeyguardIndicationController$BaseKeyguardCallback:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFaceAcquiredMessageDeferral:Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;->reset()V

    :cond_0
    return-void
.end method

.method public final onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;->this$0$com$android$systemui$statusbar$KeyguardIndicationController$BaseKeyguardCallback:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideBiometricMessage()V

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFaceAcquiredMessageDeferral:Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;

    invoke-virtual {p1}, Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;->reset()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->canBypass()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showActionToUnlock()V

    :cond_0
    return-void
.end method

.method public final onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 10

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v1, 0x7

    const/16 v2, 0x9

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;->this$0$com$android$systemui$statusbar$KeyguardIndicationController$BaseKeyguardCallback:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    if-ne p3, v0, :cond_f

    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFaceAcquiredMessageDeferral:Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;

    iget-object v0, p3, Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;->mostFrequentAcquiredInfoToDefer:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v7, p3, Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;->acquiredInfoToFrequency:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    int-to-float v7, v7

    iget v8, p3, Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;->totalFrames:I

    int-to-float v8, v8

    iget v9, p3, Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;->threshold:F

    mul-float/2addr v9, v8

    cmpl-float v7, v7, v9

    if-lez v7, :cond_0

    iget-object p3, p3, Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;->acquiredInfoToHelpString:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p3, Ljava/util/HashMap;

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object p3, v5

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFaceAcquiredMessageDeferral:Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;->reset()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v0

    xor-int/2addr v0, v4

    if-eqz v0, :cond_1

    if-ne p1, v2, :cond_3

    :cond_1
    if-eq p1, v3, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v6

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v4

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardLogger:Lcom/android/keyguard/logging/KeyguardLogger;

    if-eqz v0, :cond_4

    const-string p0, "suppressingFaceError"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p0, p2, p1}, Lcom/android/keyguard/logging/KeyguardLogger;->logBiometricMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_a

    :cond_4
    const/4 v0, 0x3

    const v7, 0x7f130481

    const v8, 0x7f130483

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    if-ne p1, v0, :cond_8

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "deferred message after face auth timeout"

    invoke-virtual {v3, p2, p1, v5}, Lcom/android/keyguard/logging/KeyguardLogger;->logBiometricMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->canUnlockWithFingerprint()Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz p3, :cond_5

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v9, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showBiometricMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_5
    const-string p0, "skip showing FACE_ERROR_TIMEOUT due to co-ex logic"

    invoke-virtual {v3, p0, v5, v5}, Lcom/android/keyguard/logging/KeyguardLogger;->logBiometricMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_a

    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual {v9, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showBiometricMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showActionToUnlock()V

    goto/16 :goto_a

    :cond_8
    if-eq p1, v2, :cond_a

    if-ne p1, v1, :cond_9

    goto :goto_3

    :cond_9
    move p1, v6

    goto :goto_4

    :cond_a
    :goto_3
    move p1, v4

    :goto_4
    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->canUnlockWithFingerprint()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_5

    :cond_b
    move v7, v8

    :goto_5
    invoke-virtual {v9, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFaceLockedOutThisAuthSession:Z

    if-nez p3, :cond_c

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFaceLockedOutThisAuthSession:Z

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showErrorMessageNowOrLater(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_c
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    iget-object p2, p2, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    if-nez p2, :cond_d

    goto :goto_6

    :cond_d
    iget-boolean v6, p2, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    :goto_6
    if-nez v6, :cond_16

    const p2, 0x7f130465

    invoke-virtual {v9, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showErrorMessageNowOrLater(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_e
    invoke-virtual {p0, p2, v5}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showErrorMessageNowOrLater(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_f
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, v0, :cond_16

    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p3

    xor-int/2addr p3, v4

    if-eqz p3, :cond_12

    if-eq p1, v2, :cond_11

    if-ne p1, v1, :cond_10

    goto :goto_7

    :cond_10
    move p3, v6

    goto :goto_8

    :cond_11
    :goto_7
    move p3, v4

    :goto_8
    if-eqz p3, :cond_14

    :cond_12
    if-eq p1, v3, :cond_14

    const/16 p3, 0xa

    if-eq p1, p3, :cond_14

    const/16 p3, 0x13

    if-ne p1, p3, :cond_13

    goto :goto_9

    :cond_13
    move v4, v6

    :cond_14
    :goto_9
    if-eqz v4, :cond_15

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardLogger:Lcom/android/keyguard/logging/KeyguardLogger;

    const-string p3, "suppressingFingerprintError"

    invoke-virtual {p0, p3, p2, p1}, Lcom/android/keyguard/logging/KeyguardLogger;->logBiometricMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_a

    :cond_15
    invoke-virtual {p0, p2, v5}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showErrorMessageNowOrLater(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    :goto_a
    return-void
.end method

.method public final onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 7

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;->this$0$com$android$systemui$statusbar$KeyguardIndicationController$BaseKeyguardCallback:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    if-ne p3, v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFaceAcquiredMessageDeferral:Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;

    iget-object v1, v0, Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;->messagesToDefer:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;->acquiredInfoToHelpString:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, v0, Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;->logBuffer:Lcom/android/keyguard/logging/FaceMessageDeferralLogger;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/logging/FaceMessageDeferralLogger;->logUpdateMessage(ILjava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFaceAcquiredMessageDeferral:Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;

    iget-object v0, v0, Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;->messagesToDefer:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_6

    :cond_2
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v1, 0x1

    const/4 v2, -0x3

    const/4 v3, 0x0

    if-ne p3, v0, :cond_3

    if-ne p1, v2, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v4

    xor-int/2addr v4, v1

    if-eqz v4, :cond_4

    if-nez v0, :cond_4

    goto/16 :goto_6

    :cond_4
    sget-object v4, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v5, -0x2

    if-ne p3, v4, :cond_5

    if-eq p1, v5, :cond_5

    if-eq p1, v2, :cond_5

    move v2, v1

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    if-ne p3, v4, :cond_6

    if-ne p1, v5, :cond_6

    move v4, v1

    goto :goto_3

    :cond_6
    move v4, v3

    :goto_3
    sget-object v5, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, v5, :cond_7

    const/4 p3, -0x1

    if-ne p1, p3, :cond_7

    move p3, v1

    goto :goto_4

    :cond_7
    move p3, v3

    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->canUnlockWithFingerprint()Z

    move-result v5

    if-eqz v2, :cond_8

    if-eqz v5, :cond_8

    move v3, v1

    :cond_8
    if-eqz v3, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCoExFaceAcquisitionMsgIdsToShow:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardLogger:Lcom/android/keyguard/logging/KeyguardLogger;

    const-string p3, "skipped showing help message due to co-ex logic"

    invoke-virtual {p0, p3, p2, p1}, Lcom/android/keyguard/logging/KeyguardLogger;->logBiometricMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_6

    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setKeyguardMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    goto/16 :goto_6

    :cond_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget v2, v2, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    const/4 v6, 0x2

    if-ne v2, v6, :cond_11

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v2, 0x7f130481

    if-eqz v3, :cond_b

    const/4 v3, 0x3

    if-ne p1, v3, :cond_b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showBiometricMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_b
    if-eqz v4, :cond_c

    if-eqz v5, :cond_c

    const p1, 0x7f13045c

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showBiometricMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_c
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const v3, 0x7f130483

    if-eqz p3, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getCurrentUser()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithFace(I)Z

    move-result v4

    if-eqz v4, :cond_d

    const p1, 0x7f13045e

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showBiometricMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_d
    if-eqz p3, :cond_e

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getCurrentUser()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getTrustGrantedIndication()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showBiometricMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_e
    if-eqz v0, :cond_10

    if-eqz v5, :cond_f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_f
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_5
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showBiometricMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_10
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showBiometricMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_11
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

    if-eqz v4, :cond_12

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 p2, 0x514

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_6

    :cond_12
    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricErrorMessageToShowOnScreenOn:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 p2, 0x3e8

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_6
    return-void
.end method

.method public final onBiometricRunningStateChanged(Landroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    if-eqz p2, :cond_0

    sget-object p2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;->this$0$com$android$systemui$statusbar$KeyguardIndicationController$BaseKeyguardCallback:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideBiometricMessage()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricErrorMessageToShowOnScreenOn:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final onLockedOutStateChanged(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;->this$0$com$android$systemui$statusbar$KeyguardIndicationController$BaseKeyguardCallback:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceLockedOutPermanent:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFaceLockedOutThisAuthSession:Z

    goto :goto_1

    :cond_0
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintLockedOut()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v0, 0x7f130483

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPersistentUnlockMessage:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDeviceEntryIndication(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final onLogoutEnabledChanged()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;->this$0$com$android$systemui$statusbar$KeyguardIndicationController$BaseKeyguardCallback:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDeviceEntryIndication(Z)V

    :cond_0
    return-void
.end method

.method public final onRefreshBatteryInfo(Lcom/android/settingslib/fuelgauge/BatteryStatus;)V
    .locals 12

    iget v0, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;->this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    iput v0, v1, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mBatteryLevel:I

    const/16 v2, 0x64

    const/4 v3, 0x5

    const/4 v4, 0x0

    iget v5, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v5, v6, :cond_3

    if-eq v5, v3, :cond_1

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v7

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v4

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v7

    :goto_3
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;->this$0$com$android$systemui$statusbar$KeyguardIndicationController$BaseKeyguardCallback:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardLogger:Lcom/android/keyguard/logging/KeyguardLogger;

    iget v10, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    if-eq v10, v7, :cond_5

    if-ne v10, v6, :cond_4

    goto :goto_4

    :cond_4
    move v6, v4

    goto :goto_5

    :cond_5
    :goto_4
    move v6, v7

    :goto_5
    if-eqz v6, :cond_6

    if-eqz v0, :cond_6

    move v6, v7

    goto :goto_6

    :cond_6
    move v6, v4

    :goto_6
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWired:Z

    const/4 v6, 0x4

    if-ne v10, v6, :cond_7

    move v11, v7

    goto :goto_7

    :cond_7
    move v11, v4

    :goto_7
    if-eqz v11, :cond_8

    if-eqz v0, :cond_8

    move v11, v7

    goto :goto_8

    :cond_8
    move v11, v4

    :goto_8
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWireless:Z

    const/16 v11, 0x8

    if-ne v10, v11, :cond_9

    move v10, v7

    goto :goto_9

    :cond_9
    move v10, v4

    :goto_9
    if-eqz v10, :cond_a

    if-eqz v0, :cond_a

    move v10, v7

    goto :goto_a

    :cond_a
    move v10, v4

    :goto_a
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInDock:Z

    invoke-virtual {p1}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->isPluggedIn()Z

    move-result v10

    if-eqz v10, :cond_b

    if-eqz v0, :cond_b

    move v10, v7

    goto :goto_b

    :cond_b
    move v10, v4

    :goto_b
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    iget v10, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    if-eq v5, v3, :cond_d

    if-lt v10, v2, :cond_c

    goto :goto_c

    :cond_c
    move v2, v4

    goto :goto_d

    :cond_d
    :goto_c
    move v2, v7

    :goto_d
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    iget v2, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingWattage:I

    iput v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingWattage:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->getChargingSpeed(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSpeed:I

    iput v10, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    iget-boolean v2, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->present:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryPresent:Z

    iget v2, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->chargingStatus:I

    if-ne v2, v6, :cond_e

    move v2, v7

    goto :goto_e

    :cond_e
    move v2, v4

    :goto_e
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryDefender:Z

    if-eqz v2, :cond_f

    invoke-virtual {p1}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->isPluggedIn()Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v7

    goto :goto_f

    :cond_f
    move v2, v4

    :goto_f
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mEnableBatteryDefender:Z

    iget-object p1, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->incompatibleCharger:Ljava/util/Optional;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIncompatibleCharger:Z

    const-wide/16 v2, -0x1

    :try_start_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p1}, Lcom/android/internal/app/IBatteryStats;->computeChargeTimeRemaining()J

    move-result-wide v5

    goto :goto_10

    :cond_10
    move-wide v5, v2

    :goto_10
    iput-wide v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingTimeRemaining:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_11

    :catch_0
    move-exception p1

    sget-object v5, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    const-string v6, "Error calling IBatteryStats"

    const-string v10, "KeyguardIndication"

    invoke-virtual {v9, v10, v5, v6, p1}, Lcom/android/keyguard/logging/KeyguardLogger;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-wide v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingTimeRemaining:J

    :goto_11
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryDefender:Z

    invoke-virtual {v9, v2, v0, p1, v3}, Lcom/android/keyguard/logging/KeyguardLogger;->logRefreshBatteryInfo(IZZZ)V

    if-nez v8, :cond_11

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWired:Z

    if-eqz p1, :cond_11

    goto :goto_12

    :cond_11
    move v7, v4

    :goto_12
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDeviceEntryIndication(Z)V

    iget-boolean p0, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    if-eqz p0, :cond_12

    invoke-virtual {v1}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->triggerAdaptiveChargingStatusUpdate()V

    goto :goto_13

    :cond_12
    iput-boolean v4, v1, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mAdaptiveChargingActive:Z

    :goto_13
    return-void
.end method

.method public final onRequireUnlockForNfc()V
    .locals 4

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;->this$0$com$android$systemui$statusbar$KeyguardIndicationController$BaseKeyguardCallback:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v1, 0x7f13075e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHideTransientMessageHandler:Lcom/android/systemui/util/AlarmTimeout;

    const-wide/16 v1, 0x1004

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/util/AlarmTimeout;->schedule(JI)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateTransient()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/util/AlarmTimeout;->schedule(JI)Z

    return-void
.end method

.method public final onTimeChanged()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;->this$0$com$android$systemui$statusbar$KeyguardIndicationController$BaseKeyguardCallback:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDeviceEntryIndication(Z)V

    :cond_0
    return-void
.end method

.method public final onTrustAgentErrorMessage(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;->this$0$com$android$systemui$statusbar$KeyguardIndicationController$BaseKeyguardCallback:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showBiometricMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onTrustChanged(I)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;->this$0$com$android$systemui$statusbar$KeyguardIndicationController$BaseKeyguardCallback:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDeviceEntryIndication(Z)V

    :goto_1
    return-void
.end method

.method public final onTrustGrantedForCurrentUser(ZZLcom/android/keyguard/TrustGrantFlags;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;->this$0$com$android$systemui$statusbar$KeyguardIndicationController$BaseKeyguardCallback:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p0, p4, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTrustGrantedMessage(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onUserSwitchComplete(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;->this$0$com$android$systemui$statusbar$KeyguardIndicationController$BaseKeyguardCallback:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDeviceEntryIndication(Z)V

    :cond_0
    return-void
.end method

.method public final onUserUnlocked()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;->this$0$com$android$systemui$statusbar$KeyguardIndicationController$BaseKeyguardCallback:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDeviceEntryIndication(Z)V

    :cond_0
    return-void
.end method
