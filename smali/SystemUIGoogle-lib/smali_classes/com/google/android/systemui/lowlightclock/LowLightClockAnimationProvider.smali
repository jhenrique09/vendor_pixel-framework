.class public final Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final mAlphaAnimationDurationMillis:J

.field public final mAlphaAnimationInStartDelayMillis:J

.field public final mTranslationOutInterpolator:Landroid/view/animation/PathInterpolator;

.field public final mYTranslationAnimationInDurationMillis:J

.field public final mYTranslationAnimationInStartOffset:I


# direct methods
.method public constructor <init>(IJJJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;->mYTranslationAnimationInStartOffset:I

    iput-wide p2, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;->mYTranslationAnimationInDurationMillis:J

    iput-wide p4, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;->mAlphaAnimationInStartDelayMillis:J

    iput-wide p6, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;->mAlphaAnimationDurationMillis:J

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Path;->moveTo(FF)V

    const p2, 0x3e6f0069    # 0.2334f

    const/4 p3, 0x0

    const p4, 0x3f1f5581

    const p5, 0x3e02d794

    const p6, 0x3f472ace

    const p7, 0x3f5a11f7

    move-object p1, v0

    invoke-virtual/range {p1 .. p7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const p2, 0x3f49fbe7    # 0.789f

    const p3, 0x3f672337

    const p4, 0x3f4ccccd    # 0.8f

    const p5, 0x3f73c760

    const/high16 p6, 0x3f800000    # 1.0f

    const/high16 p7, 0x3f800000    # 1.0f

    invoke-virtual/range {p1 .. p7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    new-instance p1, Landroid/view/animation/PathInterpolator;

    invoke-direct {p1, v0}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;->mTranslationOutInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method
