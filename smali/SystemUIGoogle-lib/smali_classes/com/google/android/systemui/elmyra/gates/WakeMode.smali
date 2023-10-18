.class public final Lcom/google/android/systemui/elmyra/gates/WakeMode;
.super Lcom/google/android/systemui/elmyra/gates/PowerState;
.source ""


# instance fields
.field public final mSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mSettingsObserver:Lcom/google/android/systemui/elmyra/UserContentObserver;

.field public mWakeSettingEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/PowerManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/systemui/elmyra/gates/PowerState;-><init>(Ljava/util/concurrent/Executor;Landroid/os/PowerManager;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object p5, p0, Lcom/google/android/systemui/elmyra/gates/WakeMode;->mSettings:Lcom/android/systemui/util/settings/SecureSettings;

    new-instance p2, Lcom/google/android/systemui/elmyra/UserContentObserver;

    const-string p3, "assist_gesture_wake_enabled"

    invoke-static {p3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    new-instance p4, Lcom/google/android/systemui/elmyra/gates/WakeMode$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lcom/google/android/systemui/elmyra/gates/WakeMode$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/elmyra/gates/WakeMode;)V

    const/4 p5, 0x0

    invoke-direct {p2, p1, p3, p4, p5}, Lcom/google/android/systemui/elmyra/UserContentObserver;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/util/function/Consumer;Z)V

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/gates/WakeMode;->mSettingsObserver:Lcom/google/android/systemui/elmyra/UserContentObserver;

    return-void
.end method


# virtual methods
.method public final isBlocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/WakeMode;->mWakeSettingEnabled:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/google/android/systemui/elmyra/gates/PowerState;->isBlocked()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final onActivate()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/WakeMode;->mSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v1, "assist_gesture_wake_enabled"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/systemui/elmyra/gates/WakeMode;->mWakeSettingEnabled:Z

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/WakeMode;->mSettingsObserver:Lcom/google/android/systemui/elmyra/UserContentObserver;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/UserContentObserver;->activate()V

    return-void
.end method

.method public final onDeactivate()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/WakeMode;->mSettingsObserver:Lcom/google/android/systemui/elmyra/UserContentObserver;

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/UserContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/UserContentObserver;->mUserSwitchCallback:Lcom/google/android/systemui/elmyra/UserContentObserver$1;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Elmyra/UserContentObserver"

    const-string v1, "Failed to unregister user switch observer"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [mWakeSettingEnabled -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/gates/WakeMode;->mWakeSettingEnabled:Z

    const-string v1, "]"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
