.class public abstract Lcom/google/android/systemui/columbus/legacy/sensors/ColumbusMetrics;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEBUG:Z

.field public static final ISTATS_INSTANCE_NAME:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/frameworks/stats/IStats;->DESCRIPTOR:Ljava/lang/String;

    const-string v1, "/default"

    invoke-static {v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/columbus/legacy/sensors/ColumbusMetrics;->ISTATS_INSTANCE_NAME:Ljava/lang/String;

    const-string v0, "Columbus/Metrics"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/columbus/legacy/sensors/ColumbusMetrics;->DEBUG:Z

    return-void
.end method
