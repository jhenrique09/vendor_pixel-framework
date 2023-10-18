.class public final Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final coroutineInitializers:Ljava/util/Set;

.field public job:Lkotlinx/coroutines/StandaloneCoroutine;

.field public final scope:Lkotlinx/coroutines/internal/ContextScope;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable;->coroutineInitializers:Ljava/util/Set;

    invoke-static {}, Lkotlinx/coroutines/CoroutineScopeKt;->MainScope()Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable;->scope:Lkotlinx/coroutines/internal/ContextScope;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable;->job:Lkotlinx/coroutines/StandaloneCoroutine;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1;-><init>(Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable;->scope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {v3, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable;->job:Lkotlinx/coroutines/StandaloneCoroutine;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already started"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
