package com.coui.appcompat.tagview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.support.appcompat.R$color;
import com.support.reddot.R$dimen;
import com.support.reddot.R$id;
import com.support.reddot.R$layout;
import com.support.reddot.R$styleable;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class COUITagView extends COUITagBackgroundView {
    private ImageView imageView;
    private ImageView leftImageView;
    private Context mContext;
    private int style;
    private COUITagBackgroundView tagBackground;
    private TextView tagView;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public COUITagView(Context context) {
        this(context, null);
        r.e(context, "context");
    }

    public final void init() {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R$layout.coui_tag_view_layout, (ViewGroup) this, true);
        View viewFindViewById = viewInflate.findViewById(R$id.tagBackground);
        r.d(viewFindViewById, "inflate.findViewById(R.id.tagBackground)");
        this.tagBackground = (COUITagBackgroundView) viewFindViewById;
        View viewFindViewById2 = viewInflate.findViewById(R$id.tagLeftImageView);
        r.d(viewFindViewById2, "inflate.findViewById(R.id.tagLeftImageView)");
        this.leftImageView = (ImageView) viewFindViewById2;
        View viewFindViewById3 = viewInflate.findViewById(R$id.tagImageView);
        r.d(viewFindViewById3, "inflate.findViewById(R.id.tagImageView)");
        this.imageView = (ImageView) viewFindViewById3;
        View viewFindViewById4 = viewInflate.findViewById(R$id.tagTextView);
        r.d(viewFindViewById4, "inflate.findViewById(R.id.tagTextView)");
        this.tagView = (TextView) viewFindViewById4;
    }

    public final void setImageBitmap(Bitmap bitmap) {
        r.e(bitmap, "bitmap");
        ImageView imageView = this.imageView;
        ImageView imageView2 = null;
        if (imageView == null) {
            r.r("imageView");
            imageView = null;
        }
        imageView.setImageBitmap(bitmap);
        ImageView imageView3 = this.imageView;
        if (imageView3 == null) {
            r.r("imageView");
        } else {
            imageView2 = imageView3;
        }
        imageView2.setVisibility(0);
    }

    public final void setImageDrawable(Drawable drawable) {
        r.e(drawable, "drawable");
        ImageView imageView = this.imageView;
        ImageView imageView2 = null;
        if (imageView == null) {
            r.r("imageView");
            imageView = null;
        }
        imageView.setImageDrawable(drawable);
        ImageView imageView3 = this.imageView;
        if (imageView3 == null) {
            r.r("imageView");
        } else {
            imageView2 = imageView3;
        }
        imageView2.setVisibility(0);
    }

    public final void setImageResoure(int i10) {
        ImageView imageView = this.imageView;
        ImageView imageView2 = null;
        if (imageView == null) {
            r.r("imageView");
            imageView = null;
        }
        imageView.setImageResource(i10);
        ImageView imageView3 = this.imageView;
        if (imageView3 == null) {
            r.r("imageView");
        } else {
            imageView2 = imageView3;
        }
        imageView2.setVisibility(0);
    }

    public final void setLeftImageBitmap(Bitmap bitmap) {
        r.e(bitmap, "bitmap");
        ImageView imageView = this.leftImageView;
        ImageView imageView2 = null;
        if (imageView == null) {
            r.r("leftImageView");
            imageView = null;
        }
        imageView.setImageBitmap(bitmap);
        ImageView imageView3 = this.leftImageView;
        if (imageView3 == null) {
            r.r("leftImageView");
        } else {
            imageView2 = imageView3;
        }
        imageView2.setVisibility(0);
    }

    public final void setLeftImageDrawable(Drawable drawable) {
        r.e(drawable, "drawable");
        ImageView imageView = this.leftImageView;
        ImageView imageView2 = null;
        if (imageView == null) {
            r.r("leftImageView");
            imageView = null;
        }
        imageView.setImageDrawable(drawable);
        ImageView imageView3 = this.leftImageView;
        if (imageView3 == null) {
            r.r("leftImageView");
        } else {
            imageView2 = imageView3;
        }
        imageView2.setVisibility(0);
    }

    public final void setLeftImageResoure(int i10) {
        ImageView imageView = this.leftImageView;
        ImageView imageView2 = null;
        if (imageView == null) {
            r.r("leftImageView");
            imageView = null;
        }
        imageView.setImageResource(i10);
        ImageView imageView3 = this.leftImageView;
        if (imageView3 == null) {
            r.r("leftImageView");
        } else {
            imageView2 = imageView3;
        }
        imageView2.setVisibility(0);
    }

    public final void setTagText(String tagText) {
        r.e(tagText, "tagText");
        TextView textView = this.tagView;
        TextView textView2 = null;
        if (textView == null) {
            r.r("tagView");
            textView = null;
        }
        textView.setText(tagText);
        TextView textView3 = this.tagView;
        if (textView3 == null) {
            r.r("tagView");
        } else {
            textView2 = textView3;
        }
        textView2.setVisibility(0);
    }

    public final void setTagTextColor(int i10) {
        TextView textView = this.tagView;
        if (textView == null) {
            r.r("tagView");
            textView = null;
        }
        textView.setTextColor(i10);
    }

    public final void setTagTextSize(int i10) {
        TextView textView = this.tagView;
        if (textView == null) {
            r.r("tagView");
            textView = null;
        }
        textView.setTextSize(0, i10);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public COUITagView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        r.e(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public COUITagView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        r.e(context, "context");
        this.mContext = context;
        this.style = (attributeSet == null || attributeSet.getStyleAttribute() == 0) ? i10 : attributeSet.getStyleAttribute();
        init();
        Context context2 = this.mContext;
        r.b(context2);
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R$styleable.COUITagView, i10, 0);
        r.d(typedArrayObtainStyledAttributes, "mContext!!.obtainStyledA…,\n            0\n        )");
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R$styleable.COUITagView_couiTagViewLeftDrawable);
        int color = typedArrayObtainStyledAttributes.getColor(R$styleable.COUITagView_couiTagViewLeftDrawableTint, 0);
        Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(R$styleable.COUITagView_couiDrawableTagViewImage);
        int color2 = typedArrayObtainStyledAttributes.getColor(R$styleable.COUITagView_couiDrawableTagViewImageTint, 0);
        String string = typedArrayObtainStyledAttributes.getString(R$styleable.COUITagView_couiTagViewText);
        int color3 = typedArrayObtainStyledAttributes.getColor(R$styleable.COUITagView_couiTagViewTextColor, COUIContextUtil.getColor(this.mContext, R$color.coui_color_white));
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUITagView_couiTagViewTextSize, context.getResources().getDimensionPixelSize(R$dimen.coui_default_tag_textsize));
        TextView textView = null;
        if (drawable != null) {
            if (color != 0) {
                drawable.setTint(color);
            }
            ImageView imageView = this.leftImageView;
            if (imageView == null) {
                r.r("leftImageView");
                imageView = null;
            }
            imageView.setImageDrawable(drawable);
        } else {
            ImageView imageView2 = this.leftImageView;
            if (imageView2 == null) {
                r.r("leftImageView");
                imageView2 = null;
            }
            imageView2.setVisibility(8);
        }
        if (drawable2 != null) {
            if (color2 != 0) {
                drawable2.setTint(color2);
            }
            ImageView imageView3 = this.imageView;
            if (imageView3 == null) {
                r.r("imageView");
                imageView3 = null;
            }
            imageView3.setImageDrawable(drawable2);
        } else {
            ImageView imageView4 = this.imageView;
            if (imageView4 == null) {
                r.r("imageView");
                imageView4 = null;
            }
            imageView4.setVisibility(8);
        }
        if (string != null) {
            TextView textView2 = this.tagView;
            if (textView2 == null) {
                r.r("tagView");
                textView2 = null;
            }
            textView2.setText(string);
        } else {
            TextView textView3 = this.tagView;
            if (textView3 == null) {
                r.r("tagView");
                textView3 = null;
            }
            textView3.setVisibility(8);
        }
        TextView textView4 = this.tagView;
        if (textView4 == null) {
            r.r("tagView");
            textView4 = null;
        }
        textView4.setTextColor(color3);
        TextView textView5 = this.tagView;
        if (textView5 == null) {
            r.r("tagView");
        } else {
            textView = textView5;
        }
        textView.setTextSize(0, dimensionPixelSize);
        typedArrayObtainStyledAttributes.recycle();
    }
}
