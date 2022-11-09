
with source as (

    select * from {{ source('raw_docebo_internal', 'branches') }}

),

renamed as (

    select
        id,
        code,
        title,
        lev,
        ileft,
        iright,
        parent_code,
        parent_id,
        selection_status,
        selectable,
        actions,
        has_children,
        can_manage,
        icon,
        color,
        tooltip

    from source

)

select * from renamed
