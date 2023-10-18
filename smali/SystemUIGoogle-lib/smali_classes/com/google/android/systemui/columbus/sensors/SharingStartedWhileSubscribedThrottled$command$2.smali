.class final Lcom/google/android/systemui/columbus/sensors/SharingStartedWhileSubscribedThrottled$command$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.columbus.sensors.SharingStartedWhileSubscribedThrottled$command$2"
    f = "SharingStartedWhileSubscribedThrottled.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p0, Lcom/google/android/systemui/columbus/sensors/SharingStartedWhileSubscribedThrottled$command$2;

    invoke-direct {p0, p2}, Lcom/google/android/systemui/columbus/sensors/SharingStartedWhileSubscribedThrottled$command$2;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/SharingStartedWhileSubscribedThrottled$command$2;->L$0:Ljava/lang/Object;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/SharingCommand;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/sensors/SharingStartedWhileSubscribedThrottled$command$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/sensors/SharingStartedWhileSubscribedThrottled$command$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/sensors/SharingStartedWhileSubscribedThrottled$command$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/systemui/columbus/sensors/SharingStartedWhileSubscribedThrottled$command$2;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/SharingStartedWhileSubscribedThrottled$command$2;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/SharingCommand;

    sget-object p1, Lkotlinx/coroutines/flow/SharingCommand;->START:Lkotlinx/coroutines/flow/SharingCommand;

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
