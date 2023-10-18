.class public final Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager$broadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager$broadcastReceiver$1;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v0, ":"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p0, "Columbus/StructuredData"

    const-string v2, ","

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e

    invoke-static/range {v1 .. v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unexpected package name tokens: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager$broadcastReceiver$1;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;

    iget-object p2, p2, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->allowPackageList:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager$broadcastReceiver$1;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;

    iget-object p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->lock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "packageName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->storePackageStats()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    monitor-exit p2

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0

    :cond_4
    :goto_2
    return-void
.end method
