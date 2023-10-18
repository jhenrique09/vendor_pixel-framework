.class public final Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1$userTrackerCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1$userTrackerCallback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProfilesChanged(Ljava/util/List;)V
    .locals 0

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1$userTrackerCallback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 0

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1$userTrackerCallback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
