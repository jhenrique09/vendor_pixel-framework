.class final Lcom/google/android/systemui/power/batteryhealth/HealthService$notifyListeners$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.power.batteryhealth.HealthService$notifyListeners$2"
    f = "HealthService.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function1;

.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/power/batteryhealth/HealthService;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$notifyListeners$2;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    iput-object p2, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$notifyListeners$2;->$block:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/google/android/systemui/power/batteryhealth/HealthService$notifyListeners$2;

    iget-object v0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$notifyListeners$2;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$notifyListeners$2;->$block:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v0, p0, p2}, Lcom/google/android/systemui/power/batteryhealth/HealthService$notifyListeners$2;-><init>(Lcom/google/android/systemui/power/batteryhealth/HealthService;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/power/batteryhealth/HealthService$notifyListeners$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$notifyListeners$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/power/batteryhealth/HealthService$notifyListeners$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$notifyListeners$2;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$notifyListeners$2;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    iget-object p1, p1, Lcom/google/android/systemui/power/batteryhealth/HealthService;->healthListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p1

    const-string v0, "On BHI updates, listener num: "

    const-string v1, "HealthService"

    invoke-static {v0, p1, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$notifyListeners$2;->$block:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$notifyListeners$2;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    iget-object v3, v3, Lcom/google/android/systemui/power/batteryhealth/HealthService;->healthListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Fail to callback registered listener: "

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$notifyListeners$2;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService;->healthListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
