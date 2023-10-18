.class public final Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public final mUriSet:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;->mUriSet:Ljava/util/Set;

    invoke-static {p1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    return-void
.end method


# virtual methods
.method public final cancelInstrument()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;->mUriSet:Ljava/util/Set;

    move-object v1, v0

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 v1, 0x16

    invoke-virtual {p0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionCancel(I)V

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method
