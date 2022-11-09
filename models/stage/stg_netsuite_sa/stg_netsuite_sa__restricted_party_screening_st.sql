
with source as (

    select * from {{ source('raw_netsuite_sa', 'restricted_party_screening_st') }}

),

renamed as (

    select
        restricted_party_screening__id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        restricted_party_screening__ex,
        restricted_party_screening__na

    from source

)

select * from renamed
