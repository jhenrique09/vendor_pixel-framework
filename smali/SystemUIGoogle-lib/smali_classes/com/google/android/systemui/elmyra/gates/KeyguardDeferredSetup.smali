.class public final Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;
.super Lcom/google/android/systemui/elmyra/gates/Gate;
.source ""


# instance fields
.field public mDeferredSetupComplete:Z

.field public final mExceptions:Ljava/util/List;

.field public final mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

.field public final mKeyguardGateListener:Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup$1;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mSettingsObserver:Lcom/google/android/systemui/elmyra/UserContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;Lcom/android/systemui/util/settings/SecureSettings;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/systemui/elmyra/gates/Gate;-><init>(Ljava/util/concurrent/Executor;)V

    new-instance p2, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup$1;-><init>(Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;)V

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;->mKeyguardGateListener:Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup$1;

    iput-object p4, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p4, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;->mExceptions:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;->mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    iput-object p2, p3, Lcom/google/android/systemui/elmyra/gates/Gate;->mListener:Lcom/google/android/systemui/elmyra/gates/Gate$Listener;

    new-instance p2, Lcom/google/android/systemui/elmyra/UserContentObserver;

    const-string p3, "assist_gesture_setup_complete"

    invoke-static {p3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    new-instance p4, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;)V

    const/4 p5, 0x0

    invoke-direct {p2, p1, p3, p4, p5}, Lcom/google/android/systemui/elmyra/UserContentObserver;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/util/function/Consumer;Z)V

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;->mSettingsObserver:Lcom/google/android/systemui/elmyra/UserContentObserver;

    return-void
.end method


# virtual methods
.method public final isBlocked()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;->mExceptions:Ljava/util/List;

    move-object v3, v2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/elmyra/actions/Action;

    invoke-virtual {v2}, Lcom/google/android/systemui/elmyra/actions/Action;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;->mDeferredSetupComplete:Z

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;->mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->isBlocking()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final onActivate()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;->mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/gates/Gate;->activate()V

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v1, "assist_gesture_setup_complete"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;->mDeferredSetupComplete:Z

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;->mSettingsObserver:Lcom/google/android/systemui/elmyra/UserContentObserver;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/UserContentObserver;->activate()V

    return-void
.end method

.method public final onDeactivate()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;->mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/gates/Gate;->deactivate()V

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;->mSettingsObserver:Lcom/google/android/systemui/elmyra/UserContentObserver;

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

    const-string v1, " [mDeferredSetupComplete -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;->mDeferredSetupComplete:Z

    const-string v1, "]"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
