.class public abstract Lcom/google/android/systemui/elmyra/actions/DeskClockAction;
.super Lcom/google/android/systemui/elmyra/actions/Action;
.source ""


# instance fields
.field public mAlertFiring:Z

.field public final mAlertReceiver:Lcom/google/android/systemui/elmyra/actions/DeskClockAction$1;

.field public final mContext:Landroid/content/Context;

.field public mReceiverRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/systemui/elmyra/actions/Action;-><init>(Ljava/util/concurrent/Executor;Ljava/util/List;)V

    new-instance p2, Lcom/google/android/systemui/elmyra/actions/DeskClockAction$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/elmyra/actions/DeskClockAction$1;-><init>(Lcom/google/android/systemui/elmyra/actions/DeskClockAction;)V

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->mAlertReceiver:Lcom/google/android/systemui/elmyra/actions/DeskClockAction$1;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->updateBroadcastReceiver()V

    new-instance p2, Lcom/google/android/systemui/elmyra/UserContentObserver;

    const-string v0, "assist_gesture_silence_alerts_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/google/android/systemui/elmyra/actions/DeskClockAction$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/elmyra/actions/DeskClockAction$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/elmyra/actions/DeskClockAction;)V

    const/4 p0, 0x1

    invoke-direct {p2, p1, v0, v1, p0}, Lcom/google/android/systemui/elmyra/UserContentObserver;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/util/function/Consumer;Z)V

    return-void
.end method


# virtual methods
.method public abstract createDismissIntent()Landroid/content/Intent;
.end method

.method public abstract getAlertAction()Ljava/lang/String;
.end method

.method public abstract getDoneAction()Ljava/lang/String;
.end method

.method public final isAvailable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->mAlertFiring:Z

    return p0
.end method

.method public final onTrigger(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 5

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->mContext:Landroid/content/Context;

    const-string v0, "android-app://"

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->createDismissIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setDisallowEnterPictureInPictureWhileLaunching(Z)V

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "android.intent.extra.REFERRER"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Elmyra/DeskClockAction"

    const-string v1, "Failed to dismiss alert"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->mAlertFiring:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->notifyListener()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [mReceiverRegistered -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->mReceiverRegistered:Z

    const-string v1, "]"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateBroadcastReceiver()V
    .locals 11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->mAlertFiring:Z

    iget-boolean v1, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->mReceiverRegistered:Z

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->mAlertReceiver:Lcom/google/android/systemui/elmyra/actions/DeskClockAction$1;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->mReceiverRegistered:Z

    :cond_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assist_gesture_silence_alerts_enabled"

    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    :cond_1
    if-eqz v0, :cond_2

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->getAlertAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->getDoneAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->mAlertReceiver:Lcom/google/android/systemui/elmyra/actions/DeskClockAction$1;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v8, "com.android.systemui.permission.SEND_ALERT_BROADCASTS"

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual/range {v4 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    iput-boolean v3, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->mReceiverRegistered:Z

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->notifyListener()V

    return-void
.end method
