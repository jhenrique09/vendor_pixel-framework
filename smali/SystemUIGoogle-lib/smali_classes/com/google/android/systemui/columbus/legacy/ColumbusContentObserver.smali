.class public final Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field public final callback:Lkotlin/jvm/functions/Function1;

.field public final contentResolver:Lcom/google/android/systemui/columbus/legacy/ContentResolverWrapper;

.field public final executor:Ljava/util/concurrent/Executor;

.field public final settingsUri:Landroid/net/Uri;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public final userTrackerCallback:Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver$userTrackerCallback$1;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/ContentResolverWrapper;Landroid/net/Uri;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p6}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver;->contentResolver:Lcom/google/android/systemui/columbus/legacy/ContentResolverWrapper;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver;->settingsUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver;->callback:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p5, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver;->executor:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver$userTrackerCallback$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver$userTrackerCallback$1;-><init>(Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver;->userTrackerCallback:Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver$userTrackerCallback$1;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver;->callback:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
