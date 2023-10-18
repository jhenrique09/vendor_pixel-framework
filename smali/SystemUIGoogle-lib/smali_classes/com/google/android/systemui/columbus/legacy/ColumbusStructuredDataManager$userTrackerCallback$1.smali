.class public final Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager$userTrackerCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager$userTrackerCallback$1;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager$userTrackerCallback$1;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->lock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->fetchPackageStats()Lorg/json/JSONArray;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method
