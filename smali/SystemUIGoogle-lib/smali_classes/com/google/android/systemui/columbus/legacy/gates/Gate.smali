.class public abstract Lcom/google/android/systemui/columbus/legacy/gates/Gate;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public active:Z

.field public final coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

.field public isBlocked:Z

.field public final listeners:Ljava/util/Set;

.field public final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final mainPostDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/android/HandlerContext;

    iget-object v1, v1, Lkotlinx/coroutines/android/HandlerContext;->immediate:Lkotlinx/coroutines/android/HandlerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->mainPostDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->listeners:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final isActive()Z
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/gates/Gate$isActive$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/columbus/legacy/gates/Gate$isActive$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/Gate;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p0, v0}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isBlocking()Z
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/gates/Gate$isBlocking$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/columbus/legacy/gates/Gate$isBlocking$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/Gate;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p0, v0}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public abstract onActivate()V
.end method

.method public abstract onDeactivate()V
.end method

.method public final registerListener(Lcom/google/android/systemui/columbus/legacy/gates/Gate$Listener;)V
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/gates/Gate$registerListener$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/google/android/systemui/columbus/legacy/gates/Gate$registerListener$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/Gate$Listener;Lcom/google/android/systemui/columbus/legacy/gates/Gate;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p0, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final setBlocking(Z)V
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/gates/Gate$setBlocking$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/systemui/columbus/legacy/gates/Gate$setBlocking$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/Gate;ZLkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p0, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unregisterListener(Lcom/google/android/systemui/columbus/legacy/gates/Gate$Listener;)V
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/gates/Gate$unregisterListener$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/google/android/systemui/columbus/legacy/gates/Gate$unregisterListener$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/Gate$Listener;Lcom/google/android/systemui/columbus/legacy/gates/Gate;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p0, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method
