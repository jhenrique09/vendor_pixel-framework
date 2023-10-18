.class public final Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$BroadcastKey;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final flags:Ljava/lang/Integer;

.field public final intentFilter:Landroid/content/IntentFilter;

.field public final permission:Ljava/lang/String;

.field public final userHandle:Landroid/os/UserHandle;

.field public final usingDispatcher:Z


# direct methods
.method public constructor <init>(Landroid/content/IntentFilter;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$BroadcastKey;->intentFilter:Landroid/content/IntentFilter;

    iput-boolean p2, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$BroadcastKey;->usingDispatcher:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$BroadcastKey;->userHandle:Landroid/os/UserHandle;

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$BroadcastKey;->permission:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$BroadcastKey;->flags:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$BroadcastKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$BroadcastKey;

    iget-object v1, p1, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$BroadcastKey;->intentFilter:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$BroadcastKey;->intentFilter:Landroid/content/IntentFilter;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$BroadcastKey;->usingDispatcher:Z

    iget-boolean v3, p1, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$BroadcastKey;->usingDispatcher:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$BroadcastKey;->userHandle:Landroid/os/UserHandle;

    iget-object v3, p1, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$BroadcastKey;->userHandle:Landroid/os/UserHandle;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$BroadcastKey;->permission:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$BroadcastKey;->permission:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$BroadcastKey;->flags:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$BroadcastKey;->flags:Ljava/lang/Integer;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$BroadcastKey;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$BroadcastKey;->usingDispatcher:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$BroadcastKey;->userHandle:Landroid/os/UserHandle;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/os/UserHandle;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$BroadcastKey;->permission:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$BroadcastKey;->flags:Ljava/lang/Integer;

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BroadcastKey(intentFilter="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$BroadcastKey;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", usingDispatcher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$BroadcastKey;->usingDispatcher:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", userHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$BroadcastKey;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", permission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$BroadcastKey;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$BroadcastKey;->flags:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
