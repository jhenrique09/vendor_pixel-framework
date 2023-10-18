.class public final Lcom/google/android/systemui/power/batteryhealth/HealthService$special$$inlined$observable$1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/android/systemui/power/batteryhealth/HealthService;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$special$$inlined$observable$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$special$$inlined$observable$1;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final setValue(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/reflect/KProperty;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$special$$inlined$observable$1;->value:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$special$$inlined$observable$1;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "registered listeners num from "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "HealthService"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$special$$inlined$observable$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    const/4 p3, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService;->mainScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v0, Lcom/google/android/systemui/power/batteryhealth/HealthService$registeredListenerNum$2$1;

    invoke-direct {v0, p0, p3}, Lcom/google/android/systemui/power/batteryhealth/HealthService$registeredListenerNum$2$1;-><init>(Lcom/google/android/systemui/power/batteryhealth/HealthService;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    invoke-static {p1, p3, p3, v0, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService;->subscribeJob:Lkotlinx/coroutines/Job;

    :cond_0
    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService;->subscribeJob:Lkotlinx/coroutines/Job;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, p3

    :goto_0
    invoke-interface {p0, p3}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_2
    return-void
.end method
