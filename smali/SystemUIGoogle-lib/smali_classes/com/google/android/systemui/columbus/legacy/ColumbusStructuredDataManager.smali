.class public final Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final allowPackageList:Ljava/util/Set;

.field public final contentResolver:Landroid/content/ContentResolver;

.field public final lock:Ljava/lang/Object;

.field public packageStats:Lorg/json/JSONArray;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->userTracker:Lcom/android/systemui/settings/UserTracker;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->lock:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->allowPackageList:Ljava/util/Set;

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager$userTrackerCallback$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager$userTrackerCallback$1;-><init>(Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;)V

    new-instance v1, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager$broadcastReceiver$1;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager$broadcastReceiver$1;-><init>(Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;)V

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->fetchPackageStats()Lorg/json/JSONArray;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p2, v0, p3}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {p0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p2, "package"

    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p1, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static makeJSONObject$default(Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;Ljava/lang/String;IJI)Lorg/json/JSONObject;
    .locals 0

    and-int/lit8 p0, p5, 0x2

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p0, p5, 0x4

    if-eqz p0, :cond_1

    const-wide/16 p3, 0x0

    :cond_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string p5, "packageName"

    invoke-virtual {p0, p5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "shownCount"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "lastDeny"

    invoke-virtual {p0, p1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object p0
.end method


# virtual methods
.method public final fetchPackageStats()Lorg/json/JSONArray;
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->contentResolver:Landroid/content/ContentResolver;

    const-string v2, "columbus_package_stats"

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p0

    invoke-static {v1, v2, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "[]"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string v1, "Columbus/StructuredData"

    const-string v2, "Failed to parse package counts"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final getLastDenyTimestamp(Ljava/lang/String;)J
    .locals 5

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "packageName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string p0, "lastDeny"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const-wide/16 p0, 0x0

    return-wide p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final getPackageShownCount(Ljava/lang/String;)I
    .locals 6

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "packageName"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string p0, "shownCount"

    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final storePackageStats()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->contentResolver:Landroid/content/ContentResolver;

    const-string v2, "columbus_package_stats"

    iget-object v3, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p0

    invoke-static {v1, v2, v3, p0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
