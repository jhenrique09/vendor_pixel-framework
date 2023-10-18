.class public final Lcom/google/android/systemui/power/EnhancedEstimatesGoogleImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/power/EnhancedEstimates;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mParser:Landroid/util/KeyValueListParser;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/power/EnhancedEstimatesGoogleImpl;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/util/KeyValueListParser;

    const/16 v0, 0x2c

    invoke-direct {p1, v0}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object p1, p0, Lcom/google/android/systemui/power/EnhancedEstimatesGoogleImpl;->mParser:Landroid/util/KeyValueListParser;

    return-void
.end method


# virtual methods
.method public final getEstimate()Lcom/android/settingslib/fuelgauge/Estimate;
    .locals 9

    const-string v0, "is_based_on_usage"

    :try_start_0
    iget-object p0, p0, Lcom/google/android/systemui/power/EnhancedEstimatesGoogleImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance p0, Landroid/net/Uri$Builder;

    invoke-direct {p0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    invoke-virtual {p0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v2, "com.google.android.apps.turbo.estimated_time_remaining"

    invoke-virtual {p0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v2, "time_remaining"

    invoke-virtual {p0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_4

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v8, v0

    const-string v0, "average_battery_life"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-wide/16 v3, -0x1

    if-eq v0, v2, :cond_3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-eqz v2, :cond_3

    const-wide/16 v2, 0xf

    invoke-static {v2, v3}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v4

    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v4

    if-ltz v4, :cond_2

    invoke-static {v5, v6}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    :cond_2
    invoke-static {v0, v1, v2, v3}, Lcom/android/settingslib/utils/PowerUtil;->roundTimeToNearestThreshold(JJ)J

    move-result-wide v0

    move-wide v6, v0

    goto :goto_2

    :cond_3
    move-wide v6, v3

    :goto_2
    const-string v0, "battery_estimate"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    new-instance v0, Lcom/android/settingslib/fuelgauge/Estimate;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/settingslib/fuelgauge/Estimate;-><init>(JJZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v0

    :cond_4
    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    const-string v0, "EnhancedEstimates"

    const-string v1, "Something went wrong when getting an estimate from Turbo"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_4
    new-instance p0, Lcom/android/settingslib/fuelgauge/Estimate;

    const-wide/16 v3, -0x1

    const/4 v7, 0x0

    const-wide/16 v5, -0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settingslib/fuelgauge/Estimate;-><init>(JJZ)V

    return-object p0
.end method

.method public final isHybridNotificationEnabled()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/systemui/power/EnhancedEstimatesGoogleImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.apps.turbo"

    const/16 v3, 0x200

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/power/EnhancedEstimatesGoogleImpl;->updateFlags()V

    iget-object p0, p0, Lcom/google/android/systemui/power/EnhancedEstimatesGoogleImpl;->mParser:Landroid/util/KeyValueListParser;

    const-string v0, "hybrid_enabled"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :catch_0
    return v0
.end method

.method public final updateFlags()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/power/EnhancedEstimatesGoogleImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hybrid_sysui_battery_warning_flags"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/systemui/power/EnhancedEstimatesGoogleImpl;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {p0, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "EnhancedEstimates"

    const-string v0, "Bad hybrid sysui warning flags"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
