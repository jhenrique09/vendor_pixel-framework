.class public final synthetic Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "assist_gesture_sensitivity"

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
