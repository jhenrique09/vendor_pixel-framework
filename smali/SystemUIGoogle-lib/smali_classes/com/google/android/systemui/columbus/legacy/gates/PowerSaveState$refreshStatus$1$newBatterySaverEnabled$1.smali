.class final Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1$newBatterySaverEnabled$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.columbus.legacy.gates.PowerSaveState$refreshStatus$1$newBatterySaverEnabled$1"
    f = "PowerSaveState.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1$newBatterySaverEnabled$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1$newBatterySaverEnabled$1;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1$newBatterySaverEnabled$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1$newBatterySaverEnabled$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1$newBatterySaverEnabled$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1$newBatterySaverEnabled$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1$newBatterySaverEnabled$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1$newBatterySaverEnabled$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1$newBatterySaverEnabled$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;->powerManager:Ldagger/Lazy;

    check-cast p0, Ldagger/internal/DoubleCheck;

    invoke-virtual {p0}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const/16 p1, 0xd

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move p1, v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
