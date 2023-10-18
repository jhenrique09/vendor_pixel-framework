.class public final Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor$stopListening$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor$stopListening$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor$stopListening$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;->ambientContextManager:Landroid/app/ambientcontext/AmbientContextManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ambientcontext/AmbientContextManager;->unregisterObserver()V

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor$stopListening$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_MODE_INACTIVE:Lcom/google/android/systemui/columbus/ColumbusEvent;

    invoke-interface {p0, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method
