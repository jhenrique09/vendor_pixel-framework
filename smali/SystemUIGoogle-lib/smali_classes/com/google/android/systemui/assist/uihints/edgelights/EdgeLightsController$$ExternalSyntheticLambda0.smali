.class public final synthetic Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;

.field public final synthetic f$1:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    iget-object v1, v0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    iget-object v2, v1, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    invoke-interface {v2, v1, p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;->onNewModeRequest(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V

    sget-object v1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;->ASSISTANT_SESSION_MODE_GONE:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    instance-of v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/Gone;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;->ASSISTANT_SESSION_MODE_GONE:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    goto :goto_0

    :cond_0
    instance-of v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;->ASSISTANT_SESSION_MODE_FULL_LISTENING:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    goto :goto_0

    :cond_1
    instance-of v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;->ASSISTANT_SESSION_MODE_FULFILL_BOTTOM:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    goto :goto_0

    :cond_2
    instance-of v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;->ASSISTANT_SESSION_MODE_FULFILL_PERIMETER:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;->ASSISTANT_SESSION_MODE_UNKNOWN:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    :goto_0
    iget-object v0, v0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

    invoke-virtual {v0, v1}, Lcom/android/systemui/assist/AssistLogger;->reportAssistantSessionEvent(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    invoke-interface {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;->logState()V

    return-void
.end method
