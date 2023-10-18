.class public final Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getBooleanSecureSettingFlow$1$apply$$inlined$map$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# instance fields
.field public final synthetic $this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

.field public final synthetic this$0:Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/Flow;Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getBooleanSecureSettingFlow$1$apply$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getBooleanSecureSettingFlow$1$apply$$inlined$map$1;->this$0:Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getBooleanSecureSettingFlow$1$apply$$inlined$map$1$2;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getBooleanSecureSettingFlow$1$apply$$inlined$map$1;->this$0:Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;

    invoke-direct {v0, p1, v1}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getBooleanSecureSettingFlow$1$apply$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getBooleanSecureSettingFlow$1$apply$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    invoke-interface {p0, v0, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
