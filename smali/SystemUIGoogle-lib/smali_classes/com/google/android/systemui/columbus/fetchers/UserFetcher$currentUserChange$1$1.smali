.class final Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $userTracker:Lcom/android/systemui/settings/UserTracker;

.field final synthetic $userTrackerCallback:Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1$userTrackerCallback$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/UserTracker;Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1$userTrackerCallback$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1$1;->$userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1$1;->$userTrackerCallback:Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1$userTrackerCallback$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1$1;->$userTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1$1;->$userTrackerCallback:Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1$userTrackerCallback$1;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
