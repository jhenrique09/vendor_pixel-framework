.class public final Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final authController:Lcom/android/systemui/biometrics/AuthController;

.field public final authControllerCallback:Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester$authControllerCallback$1;

.field public final context:Landroid/content/Context;

.field public final keyguardLogger:Lcom/android/keyguard/logging/KeyguardLogger;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final keyguardStateControllerCallback:Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester$keyguardStateControllerCallback$1;

.field public final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/biometrics/AuthController;Lcom/android/keyguard/logging/KeyguardLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester;->resources:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p4, p0, Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester;->authController:Lcom/android/systemui/biometrics/AuthController;

    iput-object p5, p0, Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester;->keyguardLogger:Lcom/android/keyguard/logging/KeyguardLogger;

    new-instance p1, Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester$keyguardStateControllerCallback$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester$keyguardStateControllerCallback$1;-><init>(Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester;)V

    iput-object p1, p0, Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester;->keyguardStateControllerCallback:Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester$keyguardStateControllerCallback$1;

    new-instance p1, Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester$authControllerCallback$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester$authControllerCallback$1;-><init>(Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester;)V

    iput-object p1, p0, Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester;->authControllerCallback:Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester$authControllerCallback$1;

    return-void
.end method

.method public static final access$updateRefreshRateRequest(Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester;->authController:Lcom/android/systemui/biometrics/AuthController;

    iget-object v1, v0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsRefreshRateRequestCallback:Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;

    const/4 v2, 0x0

    const-string v3, "PreAuthRefreshRate"

    iget-object v4, p0, Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester;->keyguardLogger:Lcom/android/keyguard/logging/KeyguardLogger;

    if-nez v1, :cond_0

    sget-object p0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    const-string v0, "skip requesting pre-auth refresh rate, refreshRateCallback is null"

    invoke-virtual {v4, v3, p0, v0, v2}, Lcom/android/keyguard/logging/KeyguardLogger;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    iget-object p0, p0, Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester;->context:Landroid/content/Context;

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/systemui/biometrics/AuthController;->isFingerprintEnrolled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    const-string v5, "start requesting pre-auth refresh rate"

    invoke-virtual {v4, v3, v0, v5, v2}, Lcom/android/keyguard/logging/KeyguardLogger;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    const/4 v0, 0x1

    invoke-interface {v1, p0, v0}, Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;->onAuthenticationPossible(IZ)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    const-string v5, "stop requesting pre-auth refresh rate"

    invoke-virtual {v4, v3, v0, v5, v2}, Lcom/android/keyguard/logging/KeyguardLogger;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    const/4 v0, 0x0

    invoke-interface {v1, p0, v0}, Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;->onAuthenticationPossible(IZ)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester;->resources:Landroid/content/res/Resources;

    const p2, 0x7f050036

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    const-string p2, "enabled: "

    invoke-static {p2, p0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public final start()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester;->resources:Landroid/content/res/Resources;

    const v1, 0x7f050036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-object v1, p0, Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester;->keyguardStateControllerCallback:Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester$keyguardStateControllerCallback$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester;->authController:Lcom/android/systemui/biometrics/AuthController;

    iget-object p0, p0, Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester;->authControllerCallback:Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester$authControllerCallback$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/biometrics/AuthController;->addCallback(Lcom/android/systemui/biometrics/AuthController$Callback;)V

    return-void
.end method
