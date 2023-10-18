.class final Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$registerHealthListener$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.power.batteryhealth.HealthService$binder$1$registerHealthListener$1"
    f = "HealthService.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callerPackage:[Ljava/lang/String;

.field final synthetic $listener:Lcom/google/android/systemui/power/batteryhealth/IHealthListener;

.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;


# direct methods
.method public constructor <init>([Ljava/lang/String;Lcom/google/android/systemui/power/batteryhealth/HealthService;Lcom/google/android/systemui/power/batteryhealth/IHealthListener;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$registerHealthListener$1;->$callerPackage:[Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$registerHealthListener$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    iput-object p3, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$registerHealthListener$1;->$listener:Lcom/google/android/systemui/power/batteryhealth/IHealthListener;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$registerHealthListener$1;

    iget-object v0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$registerHealthListener$1;->$callerPackage:[Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$registerHealthListener$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$registerHealthListener$1;->$listener:Lcom/google/android/systemui/power/batteryhealth/IHealthListener;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$registerHealthListener$1;-><init>([Ljava/lang/String;Lcom/google/android/systemui/power/batteryhealth/HealthService;Lcom/google/android/systemui/power/batteryhealth/IHealthListener;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$registerHealthListener$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$registerHealthListener$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$registerHealthListener$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$registerHealthListener$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$registerHealthListener$1;->$callerPackage:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registerHealthListener: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HealthService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$registerHealthListener$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    iget-object p1, p1, Lcom/google/android/systemui/power/batteryhealth/HealthService;->healthListeners:Landroid/os/RemoteCallbackList;

    iget-object v0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$registerHealthListener$1;->$listener:Lcom/google/android/systemui/power/batteryhealth/IHealthListener;

    invoke-virtual {p1, v0}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$registerHealthListener$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    iget-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService;->healthListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService;->registeredListenerNum$delegate:Lcom/google/android/systemui/power/batteryhealth/HealthService$special$$inlined$observable$1;

    sget-object v1, Lcom/google/android/systemui/power/batteryhealth/HealthService;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1, v1}, Lcom/google/android/systemui/power/batteryhealth/HealthService$special$$inlined$observable$1;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/reflect/KProperty;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
