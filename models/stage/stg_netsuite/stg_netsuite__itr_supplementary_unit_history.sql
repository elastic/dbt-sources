
with source as (

    select * from {{ source('raw_netsuite', 'itr_supplementary_unit_history') }}

),

renamed as (

    select
        abbreviation,
        date_created,
        is_inactive,
        itr_supplementary_unit_extid,
        itr_supplementary_unit_id,
        itr_supplementary_unit_name,
        last_modified_date,
        parent_id

    from source

)

select * from renamed
