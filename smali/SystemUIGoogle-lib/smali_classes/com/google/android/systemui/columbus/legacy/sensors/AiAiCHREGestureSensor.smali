.class public final Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;
.super Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;
.source ""


# instance fields
.field public final ambientContextCallback:Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor$ambientContextCallback$1;

.field public final ambientContextManager:Landroid/app/ambientcontext/AmbientContextManager;

.field public final bgHandler:Landroid/os/Handler;

.field public isListening:Z

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Lcom/android/internal/logging/UiEventLogger;Landroid/app/ambientcontext/AmbientContextManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/time/SystemClock;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;->ambientContextManager:Landroid/app/ambientcontext/AmbientContextManager;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;->bgHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor$ambientContextCallback$1;

    invoke-direct {p1, p5, p0}, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor$ambientContextCallback$1;-><init>(Lcom/android/systemui/util/time/SystemClock;Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;->ambientContextCallback:Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor$ambientContextCallback$1;

    return-void
.end method


# virtual methods
.method public final isListening()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;->isListening:Z

    return p0
.end method

.method public final startListening()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;->isListening:Z

    const-string v0, "startListening with AmbientContextManager.registerObserver"

    const-string v1, "Columbus/GestureSensor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    invoke-direct {v0}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->addEventType(I)Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->build()Landroid/app/ambientcontext/AmbientContextEventRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;->ambientContextManager:Landroid/app/ambientcontext/AmbientContextManager;

    if-nez v2, :cond_0

    const-string p0, "AmbientContextManager not found."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;->bgHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor$startListening$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor$startListening$1;-><init>(Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;Landroid/app/ambientcontext/AmbientContextEventRequest;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final stopListening()V
    .locals 2

    const-string v0, "stopListening with AmbientContextManager.unregisterObserver"

    const-string v1, "Columbus/GestureSensor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;->ambientContextManager:Landroid/app/ambientcontext/AmbientContextManager;

    if-nez v0, :cond_0

    const-string p0, "AmbientContextManager not found."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;->bgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor$stopListening$1;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor$stopListening$1;-><init>(Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;->isListening:Z

    return-void
.end method
