.class public final Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver$Factory;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final contentResolver:Lcom/google/android/systemui/columbus/legacy/ContentResolverWrapper;

.field public final executor:Ljava/util/concurrent/Executor;

.field public final handler:Landroid/os/Handler;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/ContentResolverWrapper;Lcom/android/systemui/settings/UserTracker;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver$Factory;->contentResolver:Lcom/google/android/systemui/columbus/legacy/ContentResolverWrapper;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver$Factory;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver$Factory;->handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver$Factory;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method
