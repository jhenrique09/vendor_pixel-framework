.class public final Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final mBlurRenderScript:Landroid/renderscript/RenderScript;

.field public final mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

.field public mLastInputAllocation:Landroid/renderscript/Allocation;

.field public mLastInputBitmap:Landroid/graphics/Bitmap;

.field public mLastOutputAllocation:Landroid/renderscript/Allocation;

.field public mLastOutputBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mBlurRenderScript:Landroid/renderscript/RenderScript;

    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    return-void
.end method


# virtual methods
.method public final prepareInputAllocation(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastInputBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastInputBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastInputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {p0, p1}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastInputAllocation:Landroid/renderscript/Allocation;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->destroy()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastInputAllocation:Landroid/renderscript/Allocation;

    :cond_3
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastInputBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_4

    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mBlurRenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v2, p1, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastInputAllocation:Landroid/renderscript/Allocation;

    :cond_4
    return-void
.end method

.method public final prepareOutputAllocation(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastOutputAllocation:Landroid/renderscript/Allocation;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastOutputBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastOutputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastOutputAllocation:Landroid/renderscript/Allocation;

    :cond_2
    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastOutputBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastOutputAllocation:Landroid/renderscript/Allocation;

    if-nez v0, :cond_3

    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mBlurRenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v2, p1, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastOutputAllocation:Landroid/renderscript/Allocation;

    :cond_3
    return-void
.end method
