.class public final Lcom/google/android/systemui/elmyra/SnapshotLogger$Snapshot;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final mSnapshot:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

.field public final mTimestamp:J


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/SnapshotLogger$Snapshot;->mSnapshot:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    iput-wide p2, p0, Lcom/google/android/systemui/elmyra/SnapshotLogger$Snapshot;->mTimestamp:J

    return-void
.end method
