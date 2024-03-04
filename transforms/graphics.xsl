<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0" xmlns:oms="http://xml.spss.com/spss/oms">
    <xsl:template match="/">    
        <xsl:apply-templates />
    </xsl:template>

    <xsl:template
        match="графика"
    >
        <svg
            width="{@ширина}"
            height="{@высота}"
            xmlns="http://www.w3.org/2000/svg"
        >
            <xsl:apply-templates />
        </svg>
    </xsl:template>

    <xsl:template
        match="эллипс"
    >
        <ellipse
            xmlns="http://www.w3.org/2000/svg"
            id="{@id}" fill="{@заливка}"
            stroke="{@ободок}"
            stroke-width="{@ширина-ободка}"
            cx="{@cx}"
            cy="{@cy}"
            rx="{@rx}"
            ry="{@ry}"
        />
    </xsl:template>
</xsl:stylesheet>