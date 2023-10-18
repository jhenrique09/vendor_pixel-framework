.class public final Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$getFirstAvailableFlow$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/fetchers/ActionFetcher;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/fetchers/ActionFetcher;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$getFirstAvailableFlow$1;->this$0:Lcom/google/android/systemui/columbus/fetchers/ActionFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$ActionListKey;

    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$ActionListKey;->actions:Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlinx/coroutines/flow/Flow;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lkotlinx/coroutines/flow/Flow;

    new-instance v0, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$getFirstAvailableFlow$1$apply$$inlined$combine$1;

    invoke-direct {v0, p1}, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$getFirstAvailableFlow$1$apply$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$getFirstAvailableFlow$1;->this$0:Lcom/google/android/systemui/columbus/fetchers/ActionFetcher;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p1

    invoke-static {v0, p0, p1, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    throw v2
.end method
