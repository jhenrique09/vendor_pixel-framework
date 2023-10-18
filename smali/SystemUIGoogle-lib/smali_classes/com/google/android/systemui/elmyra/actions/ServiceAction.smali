.class public abstract Lcom/google/android/systemui/elmyra/actions/ServiceAction;
.super Lcom/google/android/systemui/elmyra/actions/Action;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mElmyraService:Lcom/google/android/systemui/elmyra/IElmyraService;

.field public mElmyraServiceGestureListener:Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

.field public final mElmyraServiceListener:Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceListener;

.field public final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/google/android/systemui/elmyra/actions/Action;-><init>(Ljava/util/concurrent/Executor;Ljava/util/List;)V

    new-instance p2, Landroid/os/Binder;

    invoke-direct {p2}, Landroid/os/Binder;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mToken:Landroid/os/IBinder;

    new-instance p2, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceConnection;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceConnection;-><init>(Lcom/google/android/systemui/elmyra/actions/ServiceAction;)V

    new-instance p3, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceListener;

    invoke-direct {p3, p0}, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceListener;-><init>(Lcom/google/android/systemui/elmyra/actions/ServiceAction;)V

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraServiceListener:Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceListener;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mContext:Landroid/content/Context;

    :try_start_0
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    new-instance p3, Landroid/content/ComponentName;

    const-class v0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;

    invoke-direct {p3, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 p3, 0x1

    invoke-virtual {p1, p0, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Elmyra/ServiceAction"

    const-string p2, "Unable to bind to ElmyraServiceProxy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    const-string v0, "Elmyra/ServiceAction"

    const-string v1, "Binder died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraServiceGestureListener:Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->notifyListener()V

    return-void
.end method

.method public abstract checkSupportedCaller()Z
.end method

.method public final isAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraServiceGestureListener:Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onProgress(IF)V
    .locals 3

    const-string v0, "Elmyra/ServiceAction"

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraServiceGestureListener:Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/elmyra/actions/Action;->updateFeedbackEffects(IF)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraServiceGestureListener:Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    check-cast v2, Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener$Stub$Proxy;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener$Stub$Proxy;->onGestureProgress(IF)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Unable to send progress, setting listener to null"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v1, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraServiceGestureListener:Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->notifyListener()V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p2, "Listener crashed or closed without unregistering"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v1, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraServiceGestureListener:Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->notifyListener()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onTrigger(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 3

    const-string v0, "Elmyra/ServiceAction"

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraServiceGestureListener:Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/elmyra/actions/Action;->triggerFeedbackEffects(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    const/4 p1, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraServiceGestureListener:Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    check-cast v1, Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener$Stub$Proxy;

    invoke-virtual {v1}, Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener$Stub$Proxy;->onGestureDetected()V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Unable to send onGestureDetected; removing listener"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraServiceGestureListener:Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->notifyListener()V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "Listener crashed or closed without unregistering"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraServiceGestureListener:Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->notifyListener()V

    :cond_0
    :goto_0
    return-void
.end method

.method public triggerAction()V
    .locals 0

    return-void
.end method
