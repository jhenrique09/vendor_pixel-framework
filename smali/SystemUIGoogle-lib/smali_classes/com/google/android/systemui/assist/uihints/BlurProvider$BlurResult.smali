.class public final Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final cropRegion:Landroid/graphics/RectF;

.field public final drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;->drawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;->cropRegion:Landroid/graphics/RectF;

    return-void
.end method
