.class public final Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1$contentObserver$1;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic $userId:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;ILandroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1$contentObserver$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput p2, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1$contentObserver$1;->$userId:I

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1$contentObserver$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget p0, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1$contentObserver$1;->$userId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerCoroutine;

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
