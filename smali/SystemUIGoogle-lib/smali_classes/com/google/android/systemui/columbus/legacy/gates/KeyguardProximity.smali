.class public final Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;
.super Lcom/google/android/systemui/columbus/legacy/gates/Gate;
.source ""


# instance fields
.field public isListening:Z

.field public final keyguardGate:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility;

.field public final keyguardListener:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$keyguardListener$1;

.field public final proximity:Lcom/google/android/systemui/columbus/legacy/gates/Proximity;

.field public final proximityListener:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$keyguardListener$1;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility;Lcom/google/android/systemui/columbus/legacy/gates/Proximity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;->keyguardGate:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;->proximity:Lcom/google/android/systemui/columbus/legacy/gates/Proximity;

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$keyguardListener$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$keyguardListener$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;I)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;->keyguardListener:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$keyguardListener$1;

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$keyguardListener$1;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$keyguardListener$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;I)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;->proximityListener:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$keyguardListener$1;

    return-void
.end method


# virtual methods
.method public final onActivate()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;->keyguardGate:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;->keyguardListener:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$keyguardListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/legacy/gates/Gate$Listener;)V

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$updateProximityListener$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$updateProximityListener$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final onDeactivate()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;->keyguardGate:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;->keyguardListener:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$keyguardListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->unregisterListener(Lcom/google/android/systemui/columbus/legacy/gates/Gate$Listener;)V

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$updateProximityListener$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$updateProximityListener$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$toString$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$toString$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
