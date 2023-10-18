.class public final Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final SENSITIVITY_RANGE:Landroid/util/Range;


# instance fields
.field public final mAdjustmentCallback:Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$$ExternalSyntheticLambda0;

.field public final mAdjustments:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public mListener:Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$Listener;

.field public mSensitivity:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->SENSITIVITY_RANGE:Landroid/util/Range;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;I)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->mAdjustmentCallback:Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->mAdjustments:Ljava/util/List;

    new-instance p2, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {p2, p0, v1}, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;I)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    new-instance p2, Lcom/google/android/systemui/elmyra/UserContentObserver;

    const-string v0, "assist_gesture_sensitivity"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;I)V

    invoke-direct {p2, p1, v0, v2, v1}, Lcom/google/android/systemui/elmyra/UserContentObserver;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/util/function/Consumer;Z)V

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->getUserSensitivity()F

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->mSensitivity:F

    return-void
.end method


# virtual methods
.method public final getSensitivity()F
    .locals 4

    iget v0, p0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->mSensitivity:F

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->mAdjustments:Ljava/util/List;

    move-object v3, v2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;

    iget-object v3, v2, Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-nez v3, :cond_0

    iget v2, v2, Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;->mScreenOffAdjustment:F

    add-float/2addr v0, v2

    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sget-object v2, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->SENSITIVITY_RANGE:Landroid/util/Range;

    invoke-virtual {v2, v0}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final getUserSensitivity()F
    .locals 2

    new-instance v0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    sget-object v0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->SENSITIVITY_RANGE:Landroid/util/Range;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 p0, 0x3f000000    # 0.5f

    :cond_0
    return p0
.end method
