.class public final Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor$startListening$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $request:Landroid/app/ambientcontext/AmbientContextEventRequest;

.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;Landroid/app/ambientcontext/AmbientContextEventRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor$startListening$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor$startListening$1;->$request:Landroid/app/ambientcontext/AmbientContextEventRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor$startListening$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;

    iget-object v1, v0, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;->ambientContextManager:Landroid/app/ambientcontext/AmbientContextManager;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor$startListening$1;->$request:Landroid/app/ambientcontext/AmbientContextEventRequest;

    iget-object v3, v0, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;->mainExecutor:Ljava/util/concurrent/Executor;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;->ambientContextCallback:Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor$ambientContextCallback$1;

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/ambientcontext/AmbientContextManager;->registerObserver(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/util/concurrent/Executor;Landroid/app/ambientcontext/AmbientContextCallback;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor$startListening$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_MODE_LOW_POWER_ACTIVE:Lcom/google/android/systemui/columbus/ColumbusEvent;

    invoke-interface {p0, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method
